import UIKit
import Flutter
import LocalAuthentication
import AuthenticationServices

@available(iOS 15.0, *)
@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate, ASAuthorizationControllerDelegate {
    
    var webAuthnChannel: FlutterMethodChannel? = nil
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
        webAuthnChannel = FlutterMethodChannel(name: "com.corbado.flutterapp/webauthn", binaryMessenger: controller as! FlutterBinaryMessenger)
        
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    override func applicationDidBecomeActive(_ application: UIApplication) {
        webAuthnChannel?.setMethodCallHandler({
            (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            // Note: this method is invoked on the UI thread.
            // Handle Different WebAuthnChannel Methods.
            switch call.method {
            case "webauthnRegister":
                self.webAuthnRegister(call: call, result: result)
            case "webauthnSignIn":
                self.webAuthnLogin(call: call, result: result)
            case "canAuthenticate":
                let canAuth = self.webAuthnCanAuthenticate(call: call, result: result)
                self.webAuthnChannel?.invokeMethod("onCanAuthenticateFinish", arguments: canAuth)
                result(true)
            default:
                result(FlutterMethodNotImplemented)
            }
        })
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        
        print("authorization.credential: \(authorization.credential.description)")
        
        switch authorization.credential {
        case let credentialRegistration as ASAuthorizationPlatformPublicKeyCredentialRegistration:
            print("A new credential was registered: \(credentialRegistration)")
            
            Task.init {
                var arguments = [String : String] ()
                arguments["id"] = credentialRegistration.credentialID.toBase64URL()
                arguments["rawId"] = credentialRegistration.credentialID.toBase64URL()
                arguments["clientDataJSON"] = credentialRegistration.rawClientDataJSON.toBase64URL()
                arguments["attestationObject"] = credentialRegistration.rawAttestationObject!.toBase64URL()
                
                let encoder = JSONEncoder()
                if let json = try? encoder.encode(arguments)
                {
                    self.webAuthnChannel?.invokeMethod("onWebauthnRegisterFinish", arguments: String(data: json, encoding: .utf8)!)
                }
            }
            
        case let credentialAssertion as ASAuthorizationPlatformPublicKeyCredentialAssertion:
            print("A credential was used to authenticate: \(credentialAssertion)")
            
            Task.init {
                var arguments = [String : String] ()
                arguments["id"] = credentialAssertion.credentialID.toBase64URL()
                arguments["rawId"] = credentialAssertion.credentialID.toBase64URL()
                arguments["clientDataJSON"] = credentialAssertion.rawClientDataJSON.toBase64URL()
                arguments["authenticatorData"] =  credentialAssertion.rawAuthenticatorData.toBase64URL()
                arguments["signature"] = credentialAssertion.signature.toBase64URL()
                arguments["userHandle"] = credentialAssertion.userID.toBase64URL()
                
                let encoder = JSONEncoder()
                if let json = try? encoder.encode(arguments)
                {
                    self.webAuthnChannel?.invokeMethod("onWebauthnSignInFinish", arguments: String(data: json, encoding: .utf8)!)
                }
            }
        default:
            fatalError("Received unknown authorization type.")
        }
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        guard let authorizationError = ASAuthorizationError.Code(rawValue: (error as NSError).code) else {
            print("Unexpected authorization error: \(error.localizedDescription)")
            return
        }
        
        if authorizationError == .canceled {
            // Either no credentials were found and the request silently ended, or the user canceled the request.
            // Consider asking the user to create an account.
            print("Request canceled.")
        } else {
            // Other ASAuthorization error.
            // The userInfo dictionary should contain useful information.
            print("Error: \((error as NSError).userInfo)")
        }
    }
    
    struct PublicKeyCredentialCreateResponse: Codable {
        
        let publicKey: PublicKey
        
        struct PublicKey: Codable {
            let challenge: String
            let user: User
            let rp: RP
            
            struct RP: Codable {
                let name: String
                let id: String
            }
            
            struct User: Codable {
                let name: String
                let displayName: String
                let id: String
            }
        }
    }
    
    struct PublicKeyCredentialAuthenticateResponse: Codable {
        
        let publicKey: PublicKey
        
        struct PublicKey: Codable {
            let challenge: String
            let rpId: String
        }
    }
    
    private func webAuthnRegister(call: FlutterMethodCall, result: FlutterResult) {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        if let args = call.arguments as? String {
            do {
                guard let response = try? decoder.decode(PublicKeyCredentialCreateResponse.self, from: args.data(using: .utf8)!) else {
                    throw CustomError.publicKeyDecoding
                }
                
                guard let challenge = Data.fromBase64Url(response.publicKey.challenge) else {
                    throw CustomError.challengeDecoding
                }
                
                let name = response.publicKey.user.displayName
                let userID = response.publicKey.user.id.data(using: .utf8)!
                let rpId = response.publicKey.rp.id
                
                let platformProvider = ASAuthorizationPlatformPublicKeyCredentialProvider(relyingPartyIdentifier: rpId)
                
                let platformKeyRequest = platformProvider.createCredentialRegistrationRequest(
                    challenge: challenge,
                    name: name,
                    userID: userID
                )
                
                let authController = ASAuthorizationController(authorizationRequests: [platformKeyRequest])
                
                authController.delegate = self
                authController.presentationContextProvider = self
                authController.performRequests()
            } catch CustomError.challengeDecoding {
                debugPrint("Failed to decode the challenge from Base64URL")
                result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid challenge", details: nil))
            } catch CustomError.publicKeyDecoding {
                debugPrint("Failed to decode the public key response from server")
                result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid public key", details: nil))
            } catch {
                debugPrint("Unexpected error: \(error)")
                result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid argument", details: nil))
            }
        }
        else {
            result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid argument", details: nil))
        }
    }
    
    private func webAuthnLogin(call: FlutterMethodCall, result: FlutterResult) {
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        if let args = call.arguments as? String {
            do {
                guard let response = try? decoder.decode(PublicKeyCredentialAuthenticateResponse.self, from: args.data(using: .utf8)!) else {
                    throw CustomError.publicKeyDecoding
                }
                                
                guard let challenge = Data.fromBase64Url(response.publicKey.challenge) else {
                    throw CustomError.challengeDecoding
                }
                
                let rpId = response.publicKey.rpId
                
                let platformProvider = ASAuthorizationPlatformPublicKeyCredentialProvider(relyingPartyIdentifier: rpId)
                
                let platformKeyRequest = platformProvider.createCredentialAssertionRequest(
                    challenge: challenge
                )
                
                let authController = ASAuthorizationController(authorizationRequests: [platformKeyRequest])
                
                authController.delegate = self
                authController.presentationContextProvider = self
                authController.performRequests()
            } catch CustomError.challengeDecoding  {
                debugPrint("Failed to decode the challenge from Base64URL")
                result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid challenge", details: nil))
            } catch CustomError.publicKeyDecoding {
                debugPrint("Failed to decode the public key response from server")
                result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid public key", details: nil))
            } catch {
                debugPrint("Unexpected error: \(error)")
                result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid argument", details: nil))
            }
        }
        else {
            result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid argument", details: nil))
        }
    }
    
    private func webAuthnCanAuthenticate(call: FlutterMethodCall, result: FlutterResult) -> Bool{
        
        return LocalAuth.shared.canAuthenticate()
    }
    
    private func getAuthentiactionMethod(call: FlutterMethodCall, result: FlutterResult) {
        if let args = call.arguments as? [String: Any],
           let username = args["username"] as? String,
           let password = args["password"] as? String {
            result("username: \(username), password: \(password)")
        } else {
            result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid argument", details: nil))
        }
    }
}

open class LocalAuth: NSObject {
    
    public static let shared = LocalAuth()
    
    private override init() {}
    
    var laContext = LAContext()
    
    func canAuthenticate() -> Bool {
        var error: NSError?
        let hasTouchId = laContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error)
        return hasTouchId
    }
}


@available(iOS 15, *) // (1)
extension AppDelegate: ASAuthorizationControllerPresentationContextProviding { // (2)
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor { // (3)
        return window // (4)
    }
}

extension Data {
    /// Same as ``Data(base64Encoded:)``, but adds padding automatically
    /// (if missing, instead of returning `nil`).
    public static func fromBase64(_ encoded: String) -> Data? {
        // Prefixes padding-character(s) (if needed).
        var encoded = encoded;
        let remainder = encoded.count % 4
        if remainder > 0 {
            encoded = encoded.padding(
                toLength: encoded.count + 4 - remainder,
                withPad: "=", startingAt: 0);
        }
        
        // Finally, decode.
        return Data(base64Encoded: encoded);
    }
    
    public static func fromBase64Url(_ encoded: String) -> Data? {
        let base64String = base64UrlToBase64(base64Url: encoded)
        return fromBase64(base64String)
    }
    
    private static func base64UrlToBase64(base64Url: String) -> String {
        let base64 = base64Url
            .replacingOccurrences(of: "-", with: "+")
            .replacingOccurrences(of: "_", with: "/")
        
        return base64
    }
}

extension String {
    public static func fromBase64(_ encoded: String) -> String? {
        if let data = Data.fromBase64(encoded) {
            return String(data: data, encoding: .utf8)
        }
        return nil;
    }
}


extension Data {
    func toBase64URL() -> String {
        let current = self
        
        var result = current.base64EncodedString()
        result = result.replacingOccurrences(of: "+", with: "-")
        result = result.replacingOccurrences(of: "/", with: "_")
        result = result.replacingOccurrences(of: "=", with: "")
        return result
    }
}

enum CustomError: Error {
    case challengeDecoding
    case publicKeyDecoding
}
