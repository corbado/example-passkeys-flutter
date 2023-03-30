package com.corbado.api;

import android.net.Uri;
import android.os.Build;
import android.util.Base64;
import android.util.Log;

import androidx.annotation.RequiresApi;

import com.google.android.gms.fido.fido2.api.common.Attachment;
import com.google.android.gms.fido.fido2.api.common.AuthenticationExtensions;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorSelectionCriteria;
import com.google.android.gms.fido.fido2.api.common.BrowserPublicKeyCredentialRequestOptions;
import com.google.android.gms.fido.fido2.api.common.EC2Algorithm;
import com.google.android.gms.fido.fido2.api.common.FidoAppIdExtension;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialDescriptor;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialParameters;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialRequestOptions;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialRpEntity;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialType;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialUserEntity;
import com.google.android.gms.fido.fido2.api.common.RSAAlgorithm;
import com.google.android.gms.fido.fido2.api.common.UserVerificationMethodExtension;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class Converter {
    private static final String tag = "[Converter]";
    private static final String rpID = "api.corbado.com";
    private static final String rpName = "api.corbado";
    private static final String origin = "https://api.corbado.com";

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
            builder.setChallenge(Base64.decode(root.getString("challenge"), Base64.URL_SAFE));

            //RP
            PublicKeyCredentialRpEntity entity = new PublicKeyCredentialRpEntity(rpID,
                    rpName, null);
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
            for (int i = 0; i < pubKeyCredParams.length(); i++) {
                JSONObject object = pubKeyCredParams.getJSONObject(i);
                String type = object.getString("type");
                int alg = object.getInt("alg");
                Log.d(tag, "Pubkeycred param " + type + " - [" + alg + "]");
                PublicKeyCredentialParameters parameter =
                        new PublicKeyCredentialParameters(type, RSAAlgorithm.RS256.getAlgoValue());
          //      parameters.add(parameter);
            }

            parameters.add(new PublicKeyCredentialParameters(PublicKeyCredentialType.PUBLIC_KEY.toString(),
                    RSAAlgorithm.RS1.getAlgoValue()));
            parameters.add(new PublicKeyCredentialParameters(PublicKeyCredentialType.PUBLIC_KEY.toString(),
                     RSAAlgorithm.RS256.getAlgoValue()));
            parameters.add(new PublicKeyCredentialParameters(PublicKeyCredentialType.PUBLIC_KEY.toString(),
                     RSAAlgorithm.RS384.getAlgoValue()));
            parameters.add(new PublicKeyCredentialParameters(PublicKeyCredentialType.PUBLIC_KEY.toString(),
                     RSAAlgorithm.RS512.getAlgoValue()));
            parameters.add(new PublicKeyCredentialParameters(PublicKeyCredentialType.PUBLIC_KEY.toString(),
                     EC2Algorithm.ES256.getAlgoValue()));
            parameters.add(new PublicKeyCredentialParameters(PublicKeyCredentialType.PUBLIC_KEY.toString(),
                     EC2Algorithm.ES384.getAlgoValue()));
            parameters.add(new PublicKeyCredentialParameters(PublicKeyCredentialType.PUBLIC_KEY.toString(),
                     EC2Algorithm.ES512.getAlgoValue()));
            parameters.add(new PublicKeyCredentialParameters(PublicKeyCredentialType.PUBLIC_KEY.toString(),
                     EC2Algorithm.ED256.getAlgoValue()));
            parameters.add(new PublicKeyCredentialParameters(PublicKeyCredentialType.PUBLIC_KEY.toString(),
                     EC2Algorithm.ED512.getAlgoValue()));
            builder.setParameters(parameters);

            //Timeout
            double timeout = Double.valueOf(root.getLong("timeout"));
            builder.setTimeoutSeconds(timeout);

            //AuthenticatorSelection
            AuthenticatorSelectionCriteria.Builder authBuilder = new AuthenticatorSelectionCriteria.Builder();
            authBuilder.setRequireResidentKey(authenticatorSelection.getBoolean("requireResidentKey"));
            authBuilder.setAttachment(Attachment.PLATFORM);
            builder.setAuthenticatorSelection(authBuilder.build());

            //Extensions
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


    @RequiresApi(api = Build.VERSION_CODES.O)
    public static PublicKeyCredentialRequestOptions parsePublicKeyCredentialRequestOptions(String data) {
        try {
            JSONObject obj = new JSONObject(data);
            JSONObject root = obj.getJSONObject("publicKey");
            JSONArray allowCredentials = root.getJSONArray("allowCredentials");

            PublicKeyCredentialRequestOptions.Builder builder =
                    new PublicKeyCredentialRequestOptions.Builder();

            //Challenge
            builder.setChallenge(Base64.decode(root.getString("challenge"), Base64.URL_SAFE));

            //Rp
            builder.setRpId(rpID);

            //AllowCredentials
            List<PublicKeyCredentialDescriptor> allowList = new ArrayList<>();
            for (int x = 0; x < allowCredentials.length(); x++) {
                JSONObject currentAllowCredential = allowCredentials.getJSONObject(x);
                String id = currentAllowCredential.getString("id");
                byte[] idDecoded = Base64.decode(id, Base64.URL_SAFE);
                allowList.add(new PublicKeyCredentialDescriptor(PublicKeyCredentialType.PUBLIC_KEY.toString(),
                        idDecoded, null));
            }
            builder.setAllowList(allowList);

            //Extensions
            AuthenticationExtensions.Builder authExtBuilder = new AuthenticationExtensions.Builder();
            authExtBuilder.setUserVerificationMethodExtension(new UserVerificationMethodExtension(true));
            builder.setAuthenticationExtensions(authExtBuilder.build());

            //Timeout
            double timeout = Double.valueOf(root.getLong("timeout"));
            builder.setTimeoutSeconds(timeout);

            return builder.build();

        } catch (JSONException e) {
            e.printStackTrace();
        }
        return null;
    }


    @RequiresApi(api = Build.VERSION_CODES.O)
    public static BrowserPublicKeyCredentialRequestOptions parseBrowserPublicKeyCredentialRequestOptions(String data) {
        try {
            JSONObject obj = new JSONObject(data);
            JSONObject root = obj.getJSONObject("publicKey");
            JSONArray allowCredentials = root.getJSONArray("allowCredentials");

            PublicKeyCredentialRequestOptions.Builder builder =
                    new PublicKeyCredentialRequestOptions.Builder();

            //Challenge

            builder.setChallenge(Base64.decode(root.getString("challenge"), Base64.URL_SAFE));

            //Rp
            builder.setRpId(rpID);

            //AllowCredentials
            List<PublicKeyCredentialDescriptor> allowList = new ArrayList<>();
            for (int x = 0; x < allowCredentials.length(); x++) {
                JSONObject currentAllowCredential = allowCredentials.getJSONObject(x);
                String id = currentAllowCredential.getString("id");
                byte[] idDecoded = Base64.decode(id, Base64.URL_SAFE);
                allowList.add(new PublicKeyCredentialDescriptor(PublicKeyCredentialType.PUBLIC_KEY.toString(),
                        idDecoded, null));
            }
            builder.setAllowList(allowList);


            //Extensions
            AuthenticationExtensions.Builder authExtBuilder = new AuthenticationExtensions.Builder();
            authExtBuilder.setUserVerificationMethodExtension(new UserVerificationMethodExtension(true));
            builder.setAuthenticationExtensions(authExtBuilder.build());

            //Timeout
            double timeout = Double.valueOf(root.getLong("timeout"));
            builder.setTimeoutSeconds(timeout);


            BrowserPublicKeyCredentialRequestOptions.Builder browserBuilder =
                    new BrowserPublicKeyCredentialRequestOptions.Builder();

            browserBuilder.setPublicKeyCredentialRequestOptions(builder.build());

            browserBuilder.setOrigin(Uri.parse(origin));


            return browserBuilder.build();

        } catch (JSONException e) {
            e.printStackTrace();
        }
        return null;
    }
}
