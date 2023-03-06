import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_connect/firebase_options.dart';

import 'app/services/local_storage.dart';
// import 'app/util/dependency.dart';
import 'presentation/app.dart';

void main() async {
  // DependencyCreator.init();
  WidgetsFlutterBinding.ensureInitialized();
  await initFireBaseServices();
  await initServices();
  runApp(App());
}

initServices() async {
  print('starting services ...');
  await Get.putAsync(() => LocalStorageService().init());
  print('All services started...');
}

initFireBaseServices() async {
  print('starting Firebase Initialization');
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  print('firebase initialization done');
}
