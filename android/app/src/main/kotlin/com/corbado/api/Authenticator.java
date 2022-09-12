package com.corbado.api;

import android.app.Activity;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.content.pm.verify.domain.DomainVerificationManager;
import android.content.pm.verify.domain.DomainVerificationUserState;
import android.os.Build;
import android.util.Log;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

import com.google.android.gms.auth.api.credentials.CredentialRequestResponse;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.fido.Fido;
import com.google.android.gms.fido.fido2.Fido2ApiClient;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorAttestationResponse;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorErrorResponse;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredential;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialUserEntity;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Map;

import kotlin.text.Charsets;


public class Authenticator {
    private static final int REGISTER_REQUEST_CODE = 28739428;
    private static final int SIGN_REQUEST_CODE = 446712374;

    @RequiresApi(api = Build.VERSION_CODES.O)
    public void onActivityResult(MainActivity activity, int requestCode, int resultCode, Intent data){
        if(requestCode == REGISTER_REQUEST_CODE) {
            Log.d("[Authenticator]", "onActivityResult called requestCode: "
                    + requestCode + ", resultCode: " + resultCode);
            Log.d("[Authenticator]", "getAction: " + data.getAction());
            Log.d("[Authenticator]", "getDataString: " + data.getDataString());
            if (requestCode == REGISTER_REQUEST_CODE) {
                byte[] fidoResponse = data.getByteArrayExtra(Fido.FIDO2_KEY_CREDENTIAL_EXTRA);

                if(fidoResponse != null) {
                    PublicKeyCredential credential = PublicKeyCredential.deserializeFromBytes(fidoResponse);
                    Log.d("[Authenticator]", "credential.getId() " + credential.getId());
                    Log.d("[Authenticator]", "credential.getRawId() " + credential.getRawId());
                    Log.d("[Authenticator]", "credential.getClientExtensionResults() " + credential.getClientExtensionResults());
                    AuthenticatorResponse resp = credential.getResponse();
                    if(resp.getClass() == AuthenticatorErrorResponse.class){
                        Log.d("[Authenticator]", "AuthenticatorErrorResponse");
                        AuthenticatorErrorResponse errorResponse = (AuthenticatorErrorResponse) resp;
                        Log.d("[Authenticator]", "errorCode: " + errorResponse.getErrorCode());
                        Log.d("[Authenticator]", "errorMessage: " + errorResponse.getErrorMessage());
                    }else{
                        AuthenticatorAttestationResponse  authAttestResp = (AuthenticatorAttestationResponse) resp;
                        String id = credential.getId();
                        byte[] rawId = credential.getRawId();
                        byte[] clientDataJSON = authAttestResp.getClientDataJSON();
                        byte[] attestationObject = authAttestResp.getAttestationObject();

                        JSONObject obj = new JSONObject();
                        try {
                            obj.put("id", id);
                            obj.put("rawId", Base64.getUrlEncoder().withoutPadding().encodeToString(rawId));
                            obj.put("clientDataJSON", new String(clientDataJSON));
                            obj.put("attestationObject", Base64.getUrlEncoder().withoutPadding().encodeToString(attestationObject));
                            activity.onWebauthnRegisterFinish(obj.toString());
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
/*
                        String id = credential.getId();
                        String rawId = new String(credential.getRawId());
                        String clientDataJSON = new String(authAttestResp.getClientDataJSON());
                        String attestationObject = new String(authAttestResp.getAttestationObject());
                        Log.d("[Authenticator]", "attestationObj: " + attestationObject);

                        JSONObject obj = new JSONObject();
                        try {
                            obj.put("id", id);
                            obj.put("rawId", rawId);
                            obj.put("clientDataJSON", clientDataJSON);
                            obj.put("attestationObject", attestationObject);
                            activity.onWebauthnRegisterFinish(obj.toString());
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
 */

                        Log.d("[Authenticator]", "getClientDataJSON: " + new String(resp.getClientDataJSON()));
                        Log.d("[Authenticator]", "serializeToBytes: " + new String(resp.serializeToBytes()));
                    }
                    Log.d("[Authenticator]", "credential.getResponse().getClass() " + resp.getClass());

                    Log.d("[Authenticator]", "credential.getResponse().getClientDataJSON() " + credential.getResponse().getClientDataJSON());
                }
                else
                    Log.d("[Authenticator]", "fido2Response2 is null ");

            }
        }
    }

    public void register(Activity activity, String data) {
        Fido2ApiClient fido2ApiClient = Fido.getFido2ApiClient(activity.getApplicationContext());

        Log.d("[Authenticator]", "Building PublicKeyCredentialCreationOptions...");
        PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions =
                Converter.parsePublicKeyCredentialCreationOptions(data);


        if (publicKeyCredentialCreationOptions != null) {
            Task<Boolean> isAvailable = fido2ApiClient.isUserVerifyingPlatformAuthenticatorAvailable();
            isAvailable.addOnSuccessListener(new OnSuccessListener<Boolean>() {
                @Override
                public void onSuccess(Boolean aBoolean) {
                    System.out.println("Task<Boolean> isAvailable result: " + aBoolean);
                }
            });

            System.out.println("fido2ApiClient toString: " + fido2ApiClient.getApiKey().toString());
            System.out.println("fido2ApiClient zaa: " + fido2ApiClient.getApiKey().zaa());

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
                            IntentSender intentSender = pendingIntent.getIntentSender();


                            // Start a FIDO2 registration request.
                            activity.startIntentSenderForResult(
                                    pendingIntent.getIntentSender(),
                                    REGISTER_REQUEST_CODE,
                                    null, // fillInIntent,
                                    0, // flagsMask,
                                    0, // flagsValue,
                                    PendingIntent.FLAG_UPDATE_CURRENT //extraFlags
                            );


                        }
                    } catch (IntentSender.SendIntentException e) {
                        e.printStackTrace();
                    }
                }
            });
        } else {
            Log.e("[Fido Authenticator]", "Internal Error");
        }
    }
}
