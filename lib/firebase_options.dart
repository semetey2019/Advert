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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB14Ielnp2aDQTSrlkIIuqlNVC3bCZomfY',
    appId: '1:361571123622:web:cd88900f4962f45c774f67',
    messagingSenderId: '361571123622',
    projectId: 'advert-92bfd',
    authDomain: 'advert-92bfd.firebaseapp.com',
    storageBucket: 'advert-92bfd.appspot.com',
    measurementId: 'G-JF0ZB26NZV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCJkkxOuDhqL749Vx_G9GNlhiE1jTWUQrI',
    appId: '1:361571123622:android:8f16495fea3ba302774f67',
    messagingSenderId: '361571123622',
    projectId: 'advert-92bfd',
    storageBucket: 'advert-92bfd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAXE2xUcy7YXZ7AdaroNOF-xzIU39stDBs',
    appId: '1:361571123622:ios:a78136d8406186ab774f67',
    messagingSenderId: '361571123622',
    projectId: 'advert-92bfd',
    storageBucket: 'advert-92bfd.appspot.com',
    iosClientId: '361571123622-o9uq28r57tqu1mm5q7j6s0kjlahaarf3.apps.googleusercontent.com',
    iosBundleId: 'com.example.advert',
  );
}