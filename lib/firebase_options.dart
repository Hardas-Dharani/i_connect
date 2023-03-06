// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCzs85c9ZwULiXQp5dJYdq7MILXqnmmPD8',
    appId: '1:515059161893:web:a2caa0a9da5a8df1f058cc',
    messagingSenderId: '515059161893',
    projectId: 'iconnectfb-962c9',
    authDomain: 'iconnectfb-962c9.firebaseapp.com',
    storageBucket: 'iconnectfb-962c9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDDvS32mzGeYftzHQsZ5RcgsZS44vhKm4E',
    appId: '1:515059161893:android:70cb6317a49f1ae3f058cc',
    messagingSenderId: '515059161893',
    projectId: 'iconnectfb-962c9',
    storageBucket: 'iconnectfb-962c9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCkuLwTH0oJZKMjnlq4cb_gIaNGHqzMS9A',
    appId: '1:515059161893:ios:56bbc3360a258c54f058cc',
    messagingSenderId: '515059161893',
    projectId: 'iconnectfb-962c9',
    storageBucket: 'iconnectfb-962c9.appspot.com',
    iosClientId: '515059161893-3lmqrdipfdq1gq93llvi7s58ndjpiqhk.apps.googleusercontent.com',
    iosBundleId: 'com.example.iConnect',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCkuLwTH0oJZKMjnlq4cb_gIaNGHqzMS9A',
    appId: '1:515059161893:ios:56bbc3360a258c54f058cc',
    messagingSenderId: '515059161893',
    projectId: 'iconnectfb-962c9',
    storageBucket: 'iconnectfb-962c9.appspot.com',
    iosClientId: '515059161893-3lmqrdipfdq1gq93llvi7s58ndjpiqhk.apps.googleusercontent.com',
    iosBundleId: 'com.example.iConnect',
  );
}
