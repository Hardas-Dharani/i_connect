import 'package:google_sign_in/google_sign_in.dart';

import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import 'package:firebase_auth/firebase_auth.dart';

import '../../../domain/repositories/firebase_repo/firebase_auth_repository.dart';

class FirebaseAuthRepositoryIml extends FirebaseAuthRepository {
  @override
  FacebookAuth? get facebookAuth => FacebookAuth.instance;

  @override
  FirebaseAuth? get firebaseAuth => FirebaseAuth.instance;

  @override
  GoogleSignIn? get googleSignIn => GoogleSignIn(scopes: <String>['openid']);
  @override
  checkFacebookUser() {
    throw UnimplementedError();
  }

  @override
  checkGoogleUser() {
    throw UnimplementedError();
  }

  @override
  Future<void> signInWithFacebook() async {
    try {
      var facebookUser = await facebookAuth!.login(permissions: ['email']);
      if (facebookUser.status == LoginStatus.failed) {
        final accessToken = facebookUser.accessToken!.token;
        final facebookCredential = FacebookAuthProvider.credential(accessToken);
        await firebaseAuth!.signInWithCredential(facebookCredential);
      }
    } catch (e) {
      // ignore: avoid_print
      print('error with sign in with facebook: $e');
    }
  }

  @override
  Future<void> signInWithGoogle() async {
    try {
      var googleUser = await googleSignIn!.signIn();
      if (googleUser != null) {
        final googleAuthentication = await googleUser.authentication;
        final googleCredential = GoogleAuthProvider.credential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken,
        );
        await firebaseAuth!.signInWithCredential(googleCredential);
      }
    } catch (e) {
      // ignore: avoid_print
      print('error with sign in with google: $e');
    }
  }

  @override
  Future<void> signOutFromFacebook() async {
    try {
      await googleSignIn!.signOut();
      await firebaseAuth!.signOut();
    } catch (e) {
      // ignore: avoid_print
      print('error with signout method: $e');
    }
  }

  @override
  Future<void> signOutFromGoogle() async {
    try {
      await googleSignIn!.signOut();
      await firebaseAuth!.signOut();
    } catch (e) {
      // ignore: avoid_print
      print('error with signout method: $e');
    }
  }
}
