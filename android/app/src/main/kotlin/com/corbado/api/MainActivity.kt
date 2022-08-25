package com.corbado.api;
import android.os.Build
import android.content.Intent as Intent
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.util.Log
import androidx.annotation.RequiresApi


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
            if (call.method == "webauthnRegister") {
                authenticator.register(this, data as String)
            } else if (call.method == "webauthnSignIn") {
                authenticator.signIn(this, data as String)

            } else if (call.method == "canAuthenticate") {
                authenticator.canAuthenticate(this);
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
}
