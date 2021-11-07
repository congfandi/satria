/*
 * satria
 * auth_controller.dart
 * Created by Cong Fandi on 6/11/2021
 * email 	: me@congfandi.com
 * website 	: https://www.thengoding.com
 * Copyright © 2021 Cong Fandi. All rights reserved.
 *
 */

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthController extends GetxController {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future facebookAuth() async {
    final FacebookLogin facebookLogin = FacebookLogin();
    final facebookResult = await facebookLogin.logIn();
    if (facebookResult.status == FacebookLoginStatus.success) {
      final facebookToken = facebookResult.accessToken;
      final oAuthProvider = OAuthProvider('facebook.com');
      final cred = oAuthProvider.credential(
        idToken: facebookToken?.token,
        accessToken: facebookToken?.userId,
      );
      await _auth.signInWithCredential(cred);
    }
  }

  Future googleAuth() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
    await googleSignIn.signIn();
    final GoogleSignInAuthentication? googleSignInAuthentication =
    await googleSignInAccount?.authentication;

    if (googleSignInAuthentication != null) {
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      UserCredential user = await _auth.signInWithCredential(credential);
      print("user ${user.user?.displayName}");
    }
  }

  Future appleAuth() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );
    if (credential.identityToken?.isNotEmpty ?? false) {
      final oAuthProvider = OAuthProvider('apple.com');
      final cred = oAuthProvider.credential(
        idToken: credential.identityToken,
        accessToken: credential.authorizationCode,
      );
      await _auth.signInWithCredential(cred);
    }
  }

  sigInAppleOnAndroid() async {
    var redirectURL = "https://little-foodie-new.firebaseapp.com/__/auth/handler";
    var clientID = "com.thengoding.satria";
    final appleIdCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        webAuthenticationOptions: WebAuthenticationOptions(
            clientId: clientID,
            redirectUri: Uri.parse(
                redirectURL)));
    final oAuthProvider = OAuthProvider('apple.com');
    oAuthProvider.credential(
      idToken: appleIdCredential.identityToken,
      accessToken: appleIdCredential.authorizationCode,
    );
  }
}