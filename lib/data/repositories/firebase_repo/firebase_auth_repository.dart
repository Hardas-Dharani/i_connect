import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:i_connect/app/services/storage_service/user_storage.dart';

import '../../../domain/repositories/firebase_repo/firebase_auth_repository.dart';
import '../../models/firebase_model/firebase_auth_model.dart';

class FirebaseAuthRepositoryIml extends FirebaseAuthRepository {
  @override
  FirebaseFirestore? get db => FirebaseFirestore.instance;
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
        final facebookUserData = await FacebookAuth.instance.getUserData();
        print(facebookUserData);
        //////////////////////////////////////////////////////////////////
        // define user profile using the model
        String displayName =
            facebookUserData['name'] ?? facebookUserData['email'];
        String email = facebookUserData['email'] ?? '';
        String id = facebookUserData['id'] ?? '';
        String photoUrl = facebookUserData['picture']['data']['url'] ?? '';
        FireBaseUserLoginResponseEntityModel userProfile =
            FireBaseUserLoginResponseEntityModel();
        userProfile.email = email;
        userProfile.accessToken = id;
        userProfile.displayName = displayName;
        userProfile.photoUrl = photoUrl;
        //////////////////////////////////////////////////////////////////
        // save profile to local storage using shared_prefernces
        UserStorage.to.saveProfile(userProfile);
        //////////////////////////////////////////////////////////////////
        // also save user to the firestore firebase
        var userbase = await db!
            .collection("users")
            .withConverter(
              fromFirestore: FireBaseUserDataModel.fromFirestore,
              toFirestore: (FireBaseUserDataModel userdata, options) =>
                  userdata.toFirestore(),
            )
            .where("id", isEqualTo: id)
            .get();
        //////////////////////////////////////////////////////////////////
        if (userbase.docs.isEmpty) {
          final data = FireBaseUserDataModel(
            id: id,
            name: displayName,
            email: email,
            photourl: photoUrl,
            fcmtoken: "",
            addtime: Timestamp.now(),
          );
          await db!
              .collection("users")
              .withConverter(
                  fromFirestore: FireBaseUserDataModel.fromFirestore,
                  toFirestore: (FireBaseUserDataModel userdata, options) =>
                      userdata.toFirestore())
              .add(data);
        }
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
        //////////////////////////////////////////////////////////////////
        // define user profile using the model
        String displayName = googleUser.displayName ?? googleUser.email;
        String email = googleUser.email;
        String id = googleUser.id;
        String photoUrl = googleUser.photoUrl ?? '';
        FireBaseUserLoginResponseEntityModel userProfile =
            FireBaseUserLoginResponseEntityModel();
        userProfile.email = email;
        userProfile.accessToken = id;
        userProfile.displayName = displayName;
        userProfile.photoUrl = photoUrl;
        //////////////////////////////////////////////////////////////////
        // save profile to local storage using shared_prefernces
        UserStorage.to.saveProfile(userProfile);
        //////////////////////////////////////////////////////////////////
        // also save user to the firestore firebase
        var userbase = await db!
            .collection("users")
            .withConverter(
              fromFirestore: FireBaseUserDataModel.fromFirestore,
              toFirestore: (FireBaseUserDataModel userdata, options) =>
                  userdata.toFirestore(),
            )
            .where("id", isEqualTo: id)
            .get();
        //////////////////////////////////////////////////////////////////
        if (userbase.docs.isEmpty) {
          final data = FireBaseUserDataModel(
            id: id,
            name: displayName,
            email: email,
            photourl: photoUrl,
            fcmtoken: "",
            addtime: Timestamp.now(),
          );
          await db!
              .collection("users")
              .withConverter(
                  fromFirestore: FireBaseUserDataModel.fromFirestore,
                  toFirestore: (FireBaseUserDataModel userdata, options) =>
                      userdata.toFirestore())
              .add(data);
        }
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
