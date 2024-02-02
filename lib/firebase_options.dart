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
    apiKey: 'AIzaSyA8-wPODqSaTIMfE2PkosIRmRgeK17i6oo',
    appId: '1:310617249094:web:f1fe161a2cb01232e74147',
    messagingSenderId: '310617249094',
    projectId: 'fir-tutorial-63bb7',
    authDomain: 'fir-tutorial-63bb7.firebaseapp.com',
    storageBucket: 'fir-tutorial-63bb7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDU6wr-xlJZ6OZrapdPSai8A9aXXmKff9o',
    appId: '1:310617249094:android:0c7101d81d79ab2ce74147',
    messagingSenderId: '310617249094',
    projectId: 'fir-tutorial-63bb7',
    storageBucket: 'fir-tutorial-63bb7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC5sF0AL_kPF1e9EnO3qW2FqOiK9Zx6quA',
    appId: '1:310617249094:ios:9d629011ccaf71e5e74147',
    messagingSenderId: '310617249094',
    projectId: 'fir-tutorial-63bb7',
    storageBucket: 'fir-tutorial-63bb7.appspot.com',
    iosBundleId: 'com.ketan.luck',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC5sF0AL_kPF1e9EnO3qW2FqOiK9Zx6quA',
    appId: '1:310617249094:ios:86daeb5efe2f0bf1e74147',
    messagingSenderId: '310617249094',
    projectId: 'fir-tutorial-63bb7',
    storageBucket: 'fir-tutorial-63bb7.appspot.com',
    iosBundleId: 'com.ketan.luck.RunnerTests',
  );
}