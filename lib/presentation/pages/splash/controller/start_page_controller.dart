import 'package:get/get.dart';

import '../../../../data/repositories/firebase_repo/firebase_auth_repository.dart';
import '../../../../domain/repositories/firebase_repo/firebase_auth_repository.dart';

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
