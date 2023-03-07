import 'package:get/get.dart';

import 'package:i_connect/data/repositories/firebase_repo/firebase_auth_repository.dart';
import 'package:i_connect/domain/repositories/firebase_repo/firebase_auth_repository.dart';

class StartPageController extends GetxController {
  FirebaseAuthRepository firebaseAuthRepository = FirebaseAuthRepositoryIml();

  loginWithGoogle() async {
    await firebaseAuthRepository.signInWithGoogle();

    update();
  }

  loginWithFacebook() async {
    await firebaseAuthRepository.signInWithFacebook();

    update();
  }
}
