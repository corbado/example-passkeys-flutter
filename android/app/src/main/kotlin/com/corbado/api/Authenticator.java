package com.corbado.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.verify.domain.DomainVerificationManager;
import android.content.pm.verify.domain.DomainVerificationUserState;
import android.os.Build;
import android.preference.PreferenceManager;
import android.util.Log;

import androidx.annotation.LongDef;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

import com.google.android.gms.fido.Fido;
import com.google.android.gms.fido.fido2.Fido2ApiClient;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorAssertionResponse;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorAttestationResponse;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorErrorResponse;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredential;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialRequestOptions;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.Base64;


public class Authenticator {
    private static final String tag = "[Authenticator]";
    private static final int REGISTER_REQUEST_CODE = 28739428;
    private static final int SIGN_REQUEST_CODE = 446712374;

    @RequiresApi(api = Build.VERSION_CODES.O)
    public void onActivityResult(MainActivity activity, int requestCode, int resultCode, Intent data) {
        Log.d(tag, "onActivityResult resultCode: " + resultCode);
        if (requestCode == REGISTER_REQUEST_CODE) {
            byte[] fidoResponse = data.getByteArrayExtra(Fido.FIDO2_KEY_CREDENTIAL_EXTRA);
            if (fidoResponse != null) {
                PublicKeyCredential credential = PublicKeyCredential.deserializeFromBytes(fidoResponse);
                AuthenticatorResponse resp = credential.getResponse();
                if (resp.getClass() == AuthenticatorErrorResponse.class) {
                    Log.w(tag, "Authentication Error occured");
                    AuthenticatorErrorResponse errorResponse = (AuthenticatorErrorResponse) resp;
                    //Extract and Return values
                } else {
                    Log.w(tag, "Authentication succeeded");
                    AuthenticatorAttestationResponse authAttestResp = (AuthenticatorAttestationResponse) resp;

                    SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(activity).edit();
                    byte[] keyHandle = authAttestResp.getKeyHandle();
                    String keyHandle64 = Base64.getEncoder().encodeToString(keyHandle);
                    Log.d(tag, "keyHandle: " + new String(keyHandle));
                    Log.d(tag, "keyHandle64: " + keyHandle64);

                    editor.putString("keyhandle", keyHandle64);
                    editor.apply();

                    String id = credential.getId();
                    byte[] rawId = credential.getRawId();
                    byte[] clientDataJSON = authAttestResp.getClientDataJSON();
                    byte[] attestationObject = authAttestResp.getAttestationObject();

                    Log.d(tag, "id: " + id);
                    Log.d(tag, "rawId: " + new String(rawId));
                    Log.d(tag, "clientDataJSON: " + new String(clientDataJSON));
                    Log.d(tag, "attestationObject: " + new String(attestationObject));
                    Log.d(tag, "attestationObject to String: " + attestationObject.toString());

                    JSONObject obj = new JSONObject();
                    try {

                        obj.put("id", id);
                        obj.put("rawId", java.util.Base64.getUrlEncoder().withoutPadding().encodeToString(rawId));
                        obj.put("clientDataJSON", new String(clientDataJSON));
                        obj.put("attestationObject", java.util.Base64.getUrlEncoder().withoutPadding().encodeToString(attestationObject));
                        activity.onWebauthnRegisterFinish(obj.toString());
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else if (requestCode == SIGN_REQUEST_CODE) {
            boolean hasKey = data.hasExtra(Fido.FIDO2_KEY_CREDENTIAL_EXTRA);
            Log.d(tag, "LOGIN SUCCESS!!!! hasKey: " + hasKey);
            byte[] fidoResponse = data.getByteArrayExtra(Fido.FIDO2_KEY_CREDENTIAL_EXTRA);
            Log.d(tag, "fidoResponse length: " + fidoResponse.length);
            PublicKeyCredential credential = PublicKeyCredential.deserializeFromBytes(fidoResponse);
            Log.d(tag, "credential parsed...");
            //        AuthenticatorErrorResponse errorResponse = AuthenticatorErrorResponse.deserializeFromBytes(fidoResponse);
            Log.d(tag, "errorResponse parsed...");
            //        AuthenticatorAssertionResponse resp = AuthenticatorAssertionResponse.deserializeFromBytes(fidoResponse);
            AuthenticatorResponse resp = credential.getResponse();
            if (resp.getClass() == AuthenticatorErrorResponse.class) {
                Log.w(tag, "Authentication Error occured");
                AuthenticatorErrorResponse errorResponse = (AuthenticatorErrorResponse) resp;
                Log.d(tag, "errorCode: " + errorResponse.getErrorCode());
                Log.d(tag, "errorMsg: " + errorResponse.getErrorMessage());
                //Extract and Return values
            } else {
                AuthenticatorAssertionResponse authResp = (AuthenticatorAssertionResponse) resp;

                Log.d(tag, "resp parsed...");
                Log.d(tag, "getId: " + credential.getId());
                Log.d(tag, "getRawId: " + credential.getRawId());
                Log.d(tag, "getAuthenticatorData: " + new String(authResp.getAuthenticatorData()));
                Log.d(tag, "getClientDataJSON: " + new String(authResp.getClientDataJSON()));
    //            Log.d(tag, "getUserHandle: " + new String(authResp.getUserHandle()));
                Log.d(tag, "Signature: " + new String(authResp.getSignature()));
            }
        }
    }

    public boolean canAuthenticate(Activity activity) {
        Fido2ApiClient fido2ApiClient = Fido.getFido2ApiClient(activity.getApplicationContext());

        Task<Boolean> isAvailable = fido2ApiClient.isUserVerifyingPlatformAuthenticatorAvailable();
        isAvailable.addOnSuccessListener(new OnSuccessListener<Boolean>() {
            @Override
            public void onSuccess(Boolean aBoolean) {
                //Authentication possible depending on aBoolean
            }
        });
        isAvailable.addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(@NonNull Exception e) {
                //Failure
            }
        });

        //Stub
        return false;
    }

    public void register(Activity activity, String data) {
        Fido2ApiClient fido2ApiClient = Fido.getFido2ApiClient(activity.getApplicationContext());

        PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions =
                Converter.parsePublicKeyCredentialCreationOptions(data);

        Task<PendingIntent> fido2PendingIntentTask =
                fido2ApiClient.getRegisterPendingIntent(publicKeyCredentialCreationOptions);
        fido2PendingIntentTask.addOnCompleteListener(new OnCompleteListener<PendingIntent>() {
            @Override
            public void onComplete(@NonNull Task<PendingIntent> task) {
                Log.d(tag, "Pending task is complete");
                //Do something
            }
        });
        fido2PendingIntentTask.addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(@NonNull Exception e) {
                Log.d(tag, "Pending task failed");
                //Do something
            }
        });
        fido2PendingIntentTask.addOnSuccessListener(new OnSuccessListener<PendingIntent>() {
            @Override
            public void onSuccess(PendingIntent pendingIntent) {
                Log.d(tag, "Sending Register PendingIntent...");
                try {
                    if (pendingIntent != null) {
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

    }

    public void signIn(Activity activity, String data){
        Fido2ApiClient fido2ApiClient = Fido.getFido2ApiClient(activity.getApplicationContext());

        PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions =
                Converter.parsePublicKeyCredentialRequestOptions(data, activity);

        Task<PendingIntent> fido2PendingIntentTask =
                fido2ApiClient.getSignPendingIntent(publicKeyCredentialRequestOptions);

        fido2PendingIntentTask.addOnSuccessListener(new OnSuccessListener<PendingIntent>() {
            @Override
            public void onSuccess(PendingIntent pendingIntent) {
                Log.d(tag, "Sending Sign PendingIntent...");
                try {
                    if (pendingIntent != null) {
                        // Start a FIDO2 registration request.
                        activity.startIntentSenderForResult(
                                pendingIntent.getIntentSender(),
                                SIGN_REQUEST_CODE,
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
    }
}
