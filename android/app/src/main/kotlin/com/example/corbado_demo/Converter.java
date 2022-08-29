package com.example.corbado_demo;

import android.util.Base64;
import android.util.Log;

import com.google.android.gms.fido.fido2.api.common.EC2Algorithm;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialParameters;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialRpEntity;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialUserEntity;

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
            PublicKeyCredentialRpEntity entity = new PublicKeyCredentialRpEntity(rp.getString("id"),
                    rp.getString("name"), user.getString("icon"));
            builder.setRp(entity);

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
                PublicKeyCredentialParameters parameter =
                        new PublicKeyCredentialParameters(type, EC2Algorithm.ES256.getAlgoValue());
                parameters.add(parameter);
            }
            builder.setParameters(parameters);

            //Timeout
            double timeout = Double.valueOf(root.getLong("timeout"));
            builder.setTimeoutSeconds(timeout);

            Log.i("[Converter]", "Builder: " + builder.toString());

            PublicKeyCredentialCreationOptions publicKeyCredential = builder.build();
            return publicKeyCredential;
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return null;
    }
}
