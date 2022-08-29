package com.example.corbado_demo

import android.content.Intent as Intent
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.util.Log


class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.corbado.flutterapp/webauthn"
    private val authenticator = Authenticator();

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "webauthnRegister") {
                Log.d("Flutter Android Native", "configureFlutterEngine called");
                val data = call.arguments
                Log.d("Flutter Android Native","configureFlutterEngine data in android native: $data")
                authenticator.register(this, data as String);
            }
            result.success(1)
        }
    }

    override fun onActivityResult(requestCode:Int, resultCode:Int, data:Intent){
        super.onActivityResult(requestCode, resultCode, data)
        Log.d("Flutter Android Native", "onActivityResult called")
        authenticator.onActivityResult(requestCode, resultCode, data)

    }
}
