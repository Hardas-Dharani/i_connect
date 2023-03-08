import 'package:cloud_firestore/cloud_firestore.dart';

class FireBaseUserLoginResponseEntity {
  String? accessToken;
  String? displayName;
  String? email;
  String? photoUrl;
  String? provider;

  FireBaseUserLoginResponseEntity({
    this.accessToken,
    this.displayName,
    this.email,
    this.photoUrl,
    this.provider,
  });
}

class FireBaseUserData {
  final String? id;
  final String? name;
  final String? email;
  final String? photourl;
  final String? fcmtoken;
  final Timestamp? addtime;

  FireBaseUserData({
    this.id,
    this.name,
    this.email,
    this.photourl,
    this.fcmtoken,
    this.addtime,
  });
}