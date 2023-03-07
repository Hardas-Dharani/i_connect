import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class FirebaseAuthRepository {
  GoogleSignIn? get googleSignIn;
  FacebookAuth? get facebookAuth;
  FirebaseAuth? get firebaseAuth;
  Future<void> signInWithGoogle();
  Future<void> signOutFromGoogle();
  Future<void> signInWithFacebook();
  Future<void> signOutFromFacebook();
  checkGoogleUser();
  checkFacebookUser();
}
