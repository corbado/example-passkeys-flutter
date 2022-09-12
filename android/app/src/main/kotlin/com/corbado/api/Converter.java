package com.corbado.api;

import android.util.Base64;
import android.util.Log;

import com.google.android.gms.fido.fido2.api.common.Attachment;
import com.google.android.gms.fido.fido2.api.common.AuthenticationExtensions;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorSelectionCriteria;
import com.google.android.gms.fido.fido2.api.common.EC2Algorithm;
import com.google.android.gms.fido.fido2.api.common.FidoAppIdExtension;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialParameters;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialRpEntity;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialUserEntity;
import com.google.android.gms.fido.fido2.api.common.RSAAlgorithm;
import com.google.android.gms.fido.fido2.api.common.UserVerificationMethodExtension;
import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class Converter {
    public static PublicKeyCredentialCreationOptions parsePublicKeyCredentialCreationOptions(String data) {
        try {
            JSONObject obj = new JSONObject(data);
            JSONObject root = obj.getJSONObject("publicKey");
            JSONObject authenticatorSelection = root.getJSONObject("authenticatorSelection");
            JSONObject rp = root.getJSONObject("rp");
            JSONObject user = root.getJSONObject("user");
            JSONArray pubKeyCredParams = root.getJSONArray("pubKeyCredParams");

            PublicKeyCredentialCreationOptions.Builder builder =
                    new PublicKeyCredentialCreationOptions.Builder();

            //Challenge
            builder.setChallenge(Base64.decode(root.getString("challenge"), Base64.DEFAULT));

            //RP
       //     PublicKeyCredentialRpEntity entity = new PublicKeyCredentialRpEntity(rp.getString("id"),
        //            rp.getString("name"), null);
            PublicKeyCredentialRpEntity entity = new PublicKeyCredentialRpEntity("api.corbado.com",
                    "api.corbado", null);
            builder.setRp(entity);

            System.out.println("id: " + entity.getId());
            System.out.println("name: " + entity.getName());

            //User
            PublicKeyCredentialUserEntity userEntity =
                    new PublicKeyCredentialUserEntity(
                            user.getString("id").getBytes() /* id */,
                            user.getString("name") /* name */,
                            user.getString("icon") /* icon */,
                            user.getString("displayName"));
            builder.setUser(userEntity);

            //Parameters
            List<PublicKeyCredentialParameters> parameters = new ArrayList<>();
            for (int i = 0 ; i < pubKeyCredParams.length(); i++) {
                JSONObject object = pubKeyCredParams.getJSONObject(i);
                String type = object.getString("type");
                int alg= object.getInt("alg");
                Log.i("[Converter]", "Pubkeycred param " + type + " - [" + alg + "]");
                PublicKeyCredentialParameters parameter =
                        new PublicKeyCredentialParameters(type, RSAAlgorithm.RS256.getAlgoValue());
                parameters.add(parameter);
            }
            builder.setParameters(parameters);



            //Timeout
            double timeout = Double.valueOf(root.getLong("timeout"));
            builder.setTimeoutSeconds(timeout);

            //AuthenticatorSelection
            AuthenticatorSelectionCriteria.Builder authBuilder = new AuthenticatorSelectionCriteria.Builder();
            authBuilder.setRequireResidentKey(authenticatorSelection.getBoolean("requireResidentKey"));
            authBuilder.setAttachment(Attachment.PLATFORM);
            builder.setAuthenticatorSelection(authBuilder.build());

            //Other
            AuthenticationExtensions.Builder authExtBuilder = new AuthenticationExtensions.Builder();
            authExtBuilder.setUserVerificationMethodExtension(new UserVerificationMethodExtension(true));
            builder.setAuthenticationExtensions(authExtBuilder.build());

            PublicKeyCredentialCreationOptions publicKeyCredential = builder.build();
            return publicKeyCredential;
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return null;
    }
}
