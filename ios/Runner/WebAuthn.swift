////
////  WebAuthn.swift
////  Runner
////
////  Created by Victor Dzhagatspanyan on 10/5/22.
////
//import AuthenticationServices
//import Foundation
//import os
//
//@available(iOS 15.0, *)
//class Webauthn: NSObject, ASAuthorizationControllerPresentationContextProviding, ASAuthorizationControllerDelegate {
//    let domain = "api.corbado.com"
//
//    var webAuthnChannel: FlutterMethodChannel? = nil
//
//    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
//    webAuthnChannel = FlutterMethodChannel(name: "com.corbado.flutterapp/webauthn", binaryMessenger: controller as! FlutterBinaryMessenger)
//
//
//    var authenticationAnchor: ASPresentationAnchor?
//
//    func signInWith(anchor: ASPresentationAnchor) async throws {
//        self.authenticationAnchor = anchor
//        let publicKeyCredentialProvider = ASAuthorizationPlatformPublicKeyCredentialProvider(relyingPartyIdentifier: domain)
//
//        // Fetch the challenge the server. The challengs should be unique for every request.
//        let challenge = Data(response.publicKey.challenge.fromBase64URL())
//
//        let assertionRequest = publicKeyCredentialProvider.createCredentialAssertionRequest(challenge: challenge)
//
//        // Pass in any mix of supported sign in request types.
//        let authController = ASAuthorizationController(authorizationRequests: [ assertionRequest ] )
//        authController.delegate = self
//        authController.presentationContextProvider = self
//        authController.performRequests()
//    }
//
//    func signUpWith(userName: String, anchor: ASPresentationAnchor) async throws {
//        self.authenticationAnchor = anchor
//        let publicKeyCredentialProvider = ASAuthorizationPlatformPublicKeyCredentialProvider(relyingPartyIdentifier: domain)
//
//        let response = try await api.doRegisterStart(username: userName);
//
//        // Fetch the challenge the server. The challengs should be unique for every request.
//        // The userID is the identifier for the user's account.
//        print(response.publicKey.user.name)
//        let challenge = Data(response.publicKey.challenge.fromBase64URL())
//        let userId = response.publicKey.user.id.fromBase64URL()
//
//        print("User id " + String(decoding: userId, as: UTF8.self))
//        print("User name " + response.publicKey.user.name)
//
//        let registrationRequest =  publicKeyCredentialProvider.createCredentialRegistrationRequest(challenge: challenge, name: response.publicKey.user.name, userID: userId)
//
//        // Only ASAuthorizationPlatformPublicKeyCredentialRegistrationRequests or
//        // ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequests should be used here.
//        let authController = ASAuthorizationController(authorizationRequests: [ registrationRequest ] )
//
//        authController.delegate = self
//        authController.presentationContextProvider = self
//        authController.performRequests()
//
//    }
//
//    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
//        let logger = Logger()
//
//        logger.log("authorization.credential: \(authorization.credential.description)")
//
//        switch authorization.credential {
//        case let credentialRegistration as ASAuthorizationPlatformPublicKeyCredentialRegistration:
//            logger.log("A new credential was registered: \(credentialRegistration)")
//
//            Task.init {
//                let response = try await api.doRegisterFinish(
//                    type: "public-key",
//                    id: credentialRegistration.credentialID,
//                    clientDataJSON: credentialRegistration.rawClientDataJSON,
//                    attestationObject: credentialRegistration.rawAttestationObject ?? Data()
//                )
//                print(response.username)
//                self.didFinishSignIn()
//            }
//
//        case let credentialAssertion as ASAuthorizationPlatformPublicKeyCredentialAssertion:
//            logger.log("A credential was used to authenticate: \(credentialAssertion)")
//            // Verify the below signature and clientDataJSON with your service for the given userID.
//            // let signature = credentialAssertion.signature
//            // let clientDataJSON = credentialAssertion.rawClientDataJSON
//            // let userID = credentialAssertion.userID
//            Task.init {
//                let response = try await api.doLoginFinish(
//                    type: "public-key",
//                    id: credentialAssertion.credentialID,
//                    clientDataJSON: credentialAssertion.rawClientDataJSON,
//                    authenticatorData: credentialAssertion.rawAuthenticatorData,
//                    signature: credentialAssertion.signature,
//                    userHandle: credentialAssertion.userID
//                )
//
//                print(response.username)
//                self.didFinishSignIn()
//            }
//
//        default:
//            fatalError("Received unknown authorization type.")
//        }
//    }
//
//    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
//        let logger = Logger()
//        guard let authorizationError = ASAuthorizationError.Code(rawValue: (error as NSError).code) else {
//            logger.error("Unexpected authorization error: \(error.localizedDescription)")
//            return
//        }
//
//        if authorizationError == .canceled {
//            // Either no credentials were found and the request silently ended, or the user canceled the request.
//            // Consider asking the user to create an account.
//            logger.log("Request canceled.")
//        } else {
//            // Other ASAuthorization error.
//            // The userInfo dictionary should contain useful information.
//            logger.error("Error: \((error as NSError).userInfo)")
//        }
//    }
//
//    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
//        return authenticationAnchor!
//    }
//
//    func didFinishSignIn() {
//        NotificationCenter.default.post(name: .UserSignedIn, object: nil)
//    }
//}
