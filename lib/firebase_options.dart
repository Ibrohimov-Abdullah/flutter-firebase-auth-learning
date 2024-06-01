// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyB6Y4jVZvN9BGF-Hg-Kfae9atbGewyxgig',
    appId: '1:707411531449:web:fe14e2748ff444480c2d68',
    messagingSenderId: '707411531449',
    projectId: 'first-firebase-auth-725e2',
    authDomain: 'first-firebase-auth-725e2.firebaseapp.com',
    storageBucket: 'first-firebase-auth-725e2.appspot.com',
    measurementId: 'G-RRQWW3X3WF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDMQB1krLrEx3AZaI9GadgjaQnyc57DRmA',
    appId: '1:707411531449:android:ecf4ea07f3e129c30c2d68',
    messagingSenderId: '707411531449',
    projectId: 'first-firebase-auth-725e2',
    storageBucket: 'first-firebase-auth-725e2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDiWBbCEIE_1PF6jlSCcqj8ri6aUsx_27c',
    appId: '1:707411531449:ios:2788cec69d0bffbb0c2d68',
    messagingSenderId: '707411531449',
    projectId: 'first-firebase-auth-725e2',
    storageBucket: 'first-firebase-auth-725e2.appspot.com',
    iosBundleId: 'com.example.firstAuthWithFirebase',
  );
}
