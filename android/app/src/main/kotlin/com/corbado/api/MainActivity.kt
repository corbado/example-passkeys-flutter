package com.corbado.api;
import android.content.Context
import android.content.pm.PackageManager
import android.os.Build
import android.content.Intent as Intent
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.util.Log
import androidx.annotation.RequiresApi
import java.security.MessageDigest
import java.security.NoSuchAlgorithmException


class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.corbado.flutterapp/webauthn"
    private val authenticator = Authenticator();
    var channel: MethodChannel? = null;

    @RequiresApi(Build.VERSION_CODES.O)
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        this.channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL);
        channel!!.setMethodCallHandler { call, result ->
            val data = call.arguments
            println("Call received: " + call.method)
            if (call.method == "webauthnRegister") {
                authenticator.register(this, data as String)
            } else if (call.method == "webauthnSignIn") {
                authenticator.signIn(this, data as String)

            } else if (call.method == "canAuthenticate") {
                authenticator.canAuthenticate(this);
            }else if (call.method == "getCertFingerprint"){
                getSig(this, "SHA256")
            }else{
                println("Unknown method: " + call.method)
            }
            result.success(1)
        }
    }

    fun onCanAuthenticateFinish(param:Boolean){
        this.channel!!.invokeMethod("onCanAuthenticateFinish", param);
    }

    fun onWebauthnRegisterFinish(param:String){
        this.channel!!.invokeMethod("onWebauthnRegisterFinish", param);
    }

    fun onWebauthnSignInFinish(param: String){
        this.channel!!.invokeMethod("onWebauthnSignInFinish", param);
    }

    @RequiresApi(Build.VERSION_CODES.O)
    override fun onActivityResult(requestCode:Int, resultCode:Int, data:Intent){
        super.onActivityResult(requestCode, resultCode, data)
        authenticator.onActivityResult(this, requestCode, resultCode, data)
    }

    fun getSig(context: Context, key: String) {
        try {
            val info = context.packageManager.getPackageInfo(
                    BuildConfig.APPLICATION_ID,
                    PackageManager.GET_SIGNATURES
            )
            for (signature in info.signatures) {
                val md = MessageDigest.getInstance(key)
                md.update(signature.toByteArray())
                val digest = md.digest()
                val toRet = StringBuilder()
                for (i in digest.indices) {
                    if (i != 0) toRet.append(":")
                    val b = digest[i].toInt() and 0xff
                    val hex = Integer.toHexString(b)
                    if (hex.length == 1) toRet.append("0")
                    toRet.append(hex)
                }
                val s = toRet.toString()
                Log.e("sig", s)

                this.channel!!.invokeMethod("onCertFingerprint", s)

            }
        } catch (e1: PackageManager.NameNotFoundException) {
            Log.e("name not found", e1.toString())
        } catch (e: NoSuchAlgorithmException) {
            Log.e("no such an algorithm", e.toString())
        } catch (e: Exception) {
            Log.e("exception", e.toString())
        }
    }
}
