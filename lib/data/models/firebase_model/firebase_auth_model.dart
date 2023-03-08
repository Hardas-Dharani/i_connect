// ignore_for_file: overridden_fields
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../domain/entities/firebase_modal/firebase_auth_model.dart';

class FireBaseUserLoginResponseEntityModel
    extends FireBaseUserLoginResponseEntity {
  @override
  String? accessToken;
  @override
  String? displayName;
  @override
  String? email;
  @override
  String? photoUrl;
  @override
  String? provider;

  FireBaseUserLoginResponseEntityModel({
    this.accessToken,
    this.displayName,
    this.email,
    this.photoUrl,
    this.provider,
  }) : super(
          accessToken: accessToken,
          displayName: displayName,
          email: email,
          photoUrl: photoUrl,
          provider: provider,
        );

  factory FireBaseUserLoginResponseEntityModel.fromJson(
          Map<String, dynamic> json) =>
      FireBaseUserLoginResponseEntityModel(
          accessToken: json["access_token"],
          displayName: json["display_name"],
          email: json["email"],
          photoUrl: json["photoUrl"],
          provider: json["provider"]);

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "display_name": displayName,
        "email": email,
        "photoUrl": photoUrl,
        "provider": provider,
      };
}

class FireBaseUserDataModel extends FireBaseUserData {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? photourl;
  @override
  final String? fcmtoken;
  @override
  final Timestamp? addtime;

  FireBaseUserDataModel({
    this.id,
    this.name,
    this.email,
    this.photourl,
    this.fcmtoken,
    this.addtime,
  }) : super(
          addtime: addtime,
          email: email,
          fcmtoken: fcmtoken,
          id: id,
          name: name,
          photourl: photourl,
        );

  factory FireBaseUserDataModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return FireBaseUserDataModel(
      id: data?['id'],
      name: data?['name'],
      email: data?['email'],
      photourl: data?['photourl'],
      fcmtoken: data?['fcmtoken'],
      addtime: data?['addtime'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (id != null) "id": id,
      if (name != null) "name": name,
      if (email != null) "email": email,
      if (photourl != null) "photourl": photourl,
      if (fcmtoken != null) "fcmtoken": fcmtoken,
      if (addtime != null) "addtime": addtime,
    };
  }
}
