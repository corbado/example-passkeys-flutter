package com.example.corbado_demo;


import android.app.Activity;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.util.Base64;
import android.util.Log;

import androidx.annotation.NonNull;

import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.fido.Fido;
import com.google.android.gms.fido.fido2.Fido2ApiClient;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorAttestationResponse;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialUserEntity;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;

import kotlin.text.Charsets;


public class Authenticator {
    private static final int REGISTER_REQUEST_CODE = 28739428;
    private static final int SIGN_REQUEST_CODE = 446712374;

    public void onActivityResult(int requestCode, int resultCode, Intent data){
        if(requestCode == REGISTER_REQUEST_CODE) {
            Log.d("[Authenticator]", "onActivityResult called requestCode: "
                    + requestCode + ", resultCode: " + resultCode);
            Log.d("[Authenticator]", "getAction: " + data.getAction());
            Log.d("[Authenticator]", "getDataString: " + data.getDataString());
            if (requestCode == REGISTER_REQUEST_CODE) {
                byte[] fido2Response = data.getByteArrayExtra(Fido.FIDO2_KEY_RESPONSE_EXTRA);
                byte[] fido2Response2 = data.getByteArrayExtra(Fido.KEY_RESPONSE_EXTRA);
                if(fido2Response != null)
                    Log.d("[Authenticator]", "fido2Response length: " + fido2Response.length);
                else
                    Log.d("[Authenticator]", "fido2Response is null ");

                if(fido2Response2 != null)
                    Log.d("[Authenticator]", "fido2Response2 length: " + fido2Response2.length);
                else
                    Log.d("[Authenticator]", "fido2Response2 is null ");

                //AuthenticatorAttestationResponse response = AuthenticatorAttestationResponse.deserializeFromBytes(fido2Response);

                //String keyHandleBase64 = Base64.encodeToString(response.serializeToBytes(), Base64.DEFAULT);
                //String clientDataJson = new String(response.getClientDataJSON(), Charsets.UTF_8);
                //String attestationObjectBase64 = Base64.encodeToString(response.getAttestationObject(), Base64.DEFAULT);
                //Log.d("[Authenticator]", "keyHandleBase64: " + keyHandleBase64);
                //Log.d("[Authenticator]", "clientDataJson: " + clientDataJson);
                //Log.d("[Authenticator]", "attestationObjectBase64: " + attestationObjectBase64);
            }
        }
    }

    public void register(Activity activity, String data) {

        System.out.println("Authenticator.register() called in native context!");
        Fido2ApiClient fido2ApiClient = Fido.getFido2ApiClient(activity);


        Log.d("[Authenticator]", "Building PublicKeyCredentialCreationOptions...");
        PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions =
                Converter.parsePublicKeyCredentialCreationOptions(data);

        if (publicKeyCredentialCreationOptions != null) {
            Task<PendingIntent> fido2PendingIntentTask =
                    fido2ApiClient.getRegisterPendingIntent(publicKeyCredentialCreationOptions);
            fido2PendingIntentTask.addOnCompleteListener(new OnCompleteListener<PendingIntent>() {
                @Override
                public void onComplete(@NonNull Task<PendingIntent> task) {
                    Log.d("[Authenticator]", "Pending task is complete");
                }
            });
            fido2PendingIntentTask.addOnFailureListener(new OnFailureListener() {
                @Override
                public void onFailure(@NonNull Exception e) {
                    Log.d("[Authenticator]", "Pending task failed");
                }
            });
            fido2PendingIntentTask.addOnSuccessListener(new OnSuccessListener<PendingIntent>() {
                @Override
                public void onSuccess(PendingIntent pendingIntent) {
                    Log.d("[Authenticator]", "Pending task success");
                    // Start a FIDO2 registration request.
                    try {
                        Log.d("[Authenticator]", "PendingIntent: " + pendingIntent.toString());
                        Log.d("[Authenticator]", "Sending PendingIntent...");
                        if (pendingIntent != null) {
                            // Start a FIDO2 registration request.
                            activity.startIntentSenderForResult(
                                    pendingIntent.getIntentSender(),
                                    REGISTER_REQUEST_CODE,
                                    null, // fillInIntent,
                                    0, // flagsMask,
                                    0, // flagsValue,
                                    0 //extraFlags
                            );
                        }
                    } catch (IntentSender.SendIntentException e) {
                        e.printStackTrace();
                    }
                    //                  pendingIntent.launchPendingIntent(this, REQUEST_CODE_REGISTER);
                    // For a FIDO2 sign request.
                    // fido2PendingIntent.launchPendingIntent(this, REQUEST_CODE_SIGN);
                }
            });
        } else {
            Log.e("[Fido Authenticator]", "Internal Error");
        }
    }
}
