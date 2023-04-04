package com.corbado.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.util.Base64;
import android.util.Log;

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
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;

import org.json.JSONException;
import org.json.JSONObject;


public class Authenticator {
    private static final String tag = "[Authenticator]";
    private static final int REGISTER_REQUEST_CODE = 28739428;
    private static final int SIGN_REQUEST_CODE = 446712374;

    @RequiresApi(api = Build.VERSION_CODES.O)
    public void onActivityResult(MainActivity activity, int requestCode, int resultCode, Intent data) {
        if (requestCode == REGISTER_REQUEST_CODE || requestCode == SIGN_REQUEST_CODE) {
            byte[] fidoResponse = data.getByteArrayExtra(Fido.FIDO2_KEY_CREDENTIAL_EXTRA);
            if (fidoResponse == null) {
                Log.w(tag, "Authentication Error occured: Fido response is null");
            }
            PublicKeyCredential credential = PublicKeyCredential.deserializeFromBytes(fidoResponse);
            AuthenticatorResponse resp = credential.getResponse();
            if (resp.getClass() == AuthenticatorErrorResponse.class) {
                AuthenticatorErrorResponse errorResponse = (AuthenticatorErrorResponse) resp;
                Log.w(tag, "Authentication Error occured: " + errorResponse.getErrorMessage());
                //Extract and Return values
            } else {

                if (requestCode == REGISTER_REQUEST_CODE) {
                    AuthenticatorAttestationResponse authAttestResp = (AuthenticatorAttestationResponse) resp;
                    String id = credential.getId();
                    byte[] rawId = credential.getRawId();
                    byte[] clientDataJSON = authAttestResp.getClientDataJSON();
                    byte[] attestationObject = authAttestResp.getAttestationObject();

                    JSONObject obj = new JSONObject();
                    try {
                        obj.put("id", id);
                        obj.put("rawId", encodeBase64(rawId));
                        obj.put("clientDataJSON", encodeBase64(clientDataJSON));
                        obj.put("attestationObject", encodeBase64(attestationObject));
                        activity.onWebauthnRegisterFinish(obj.toString());
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }


                } else if (requestCode == SIGN_REQUEST_CODE) {
                    AuthenticatorAssertionResponse authResp = (AuthenticatorAssertionResponse) resp;
                    String id = credential.getId();
                    byte[] rawId = credential.getRawId();
                    byte[] clientDataJSON = authResp.getClientDataJSON();
                    byte[] authenticatorData = authResp.getAuthenticatorData();
                    byte[] signature = authResp.getSignature();
                    byte[] userHandle = authResp.getUserHandle();

                    String userH = "";
                    if (userHandle != null)
                        userH = encodeBase64(userHandle);

                    JSONObject obj = new JSONObject();
                    try {
                        obj.put("id", id);
                        obj.put("rawId", encodeBase64(rawId));
                        obj.put("clientDataJSON", encodeBase64(clientDataJSON));
                        obj.put("authenticatorData", encodeBase64(authenticatorData));
                        obj.put("signature", encodeBase64(signature));
                        obj.put("userHandle", userH);
                        activity.onWebauthnSignInFinish(obj.toString());
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }


    @RequiresApi(api = Build.VERSION_CODES.O)
    public String encodeBase64(byte[] arr) {
        return Base64.encodeToString(arr, Base64.URL_SAFE | Base64.NO_PADDING | Base64.NO_WRAP);
    }

    public boolean canAuthenticate(MainActivity activity) {
        Fido2ApiClient fido2ApiClient = Fido.getFido2ApiClient(activity.getApplicationContext());

        Task<Boolean> isAvailable = fido2ApiClient.isUserVerifyingPlatformAuthenticatorAvailable();
        isAvailable.addOnSuccessListener(new OnSuccessListener<Boolean>() {
            @RequiresApi(api = Build.VERSION_CODES.N)
            @Override
            public void onSuccess(Boolean aBoolean) {
                activity.onCanAuthenticateFinish(aBoolean);
                //Authentication possible depending on aBoolean
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

    @RequiresApi(api = Build.VERSION_CODES.O)
    public void signIn(Activity activity, String data) {
        Fido2ApiClient fido2ApiClient = Fido.getFido2ApiClient(activity.getApplicationContext());

        PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions =
                Converter.parsePublicKeyCredentialRequestOptions(data);

        Task<PendingIntent> fido2PendingIntentTask =
                fido2ApiClient.getSignPendingIntent(publicKeyCredentialRequestOptions);

        fido2PendingIntentTask.addOnSuccessListener(new OnSuccessListener<PendingIntent>() {
            @Override
            public void onSuccess(PendingIntent pendingIntent) {
                Log.d(tag, "Sending SignIn PendingIntent...");
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
