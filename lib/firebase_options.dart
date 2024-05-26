// File generated by FlutterFire CLI.
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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAWf4G307GXkmnhAAh7MqZMQbxQIWgLXxU',
    appId: '1:936696409170:web:cd069c7831b4649099c38b',
    messagingSenderId: '936696409170',
    projectId: 'chat-example-5fabf',
    authDomain: 'chat-example-5fabf.firebaseapp.com',
    storageBucket: 'chat-example-5fabf.appspot.com',
    measurementId: 'G-8LDE3Q00L2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDoneM7552HmLwJuLKTb57plDSClb2Ipv8',
    appId: '1:936696409170:android:dafaf85d3969848a99c38b',
    messagingSenderId: '936696409170',
    projectId: 'chat-example-5fabf',
    storageBucket: 'chat-example-5fabf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBefqzybjjTdm9X8oU4FyEKQzklbIlVa-c',
    appId: '1:936696409170:ios:2919955a3bbf77d499c38b',
    messagingSenderId: '936696409170',
    projectId: 'chat-example-5fabf',
    storageBucket: 'chat-example-5fabf.appspot.com',
    androidClientId: '936696409170-716ogv7ke3anshp2i95b33qeoj9b4jgr.apps.googleusercontent.com',
    iosBundleId: 'com.example.healthPal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBefqzybjjTdm9X8oU4FyEKQzklbIlVa-c',
    appId: '1:936696409170:ios:2919955a3bbf77d499c38b',
    messagingSenderId: '936696409170',
    projectId: 'chat-example-5fabf',
    storageBucket: 'chat-example-5fabf.appspot.com',
    androidClientId: '936696409170-716ogv7ke3anshp2i95b33qeoj9b4jgr.apps.googleusercontent.com',
    iosBundleId: 'com.example.healthPal',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAWf4G307GXkmnhAAh7MqZMQbxQIWgLXxU',
    appId: '1:936696409170:web:8402c5e17472fdaa99c38b',
    messagingSenderId: '936696409170',
    projectId: 'chat-example-5fabf',
    authDomain: 'chat-example-5fabf.firebaseapp.com',
    storageBucket: 'chat-example-5fabf.appspot.com',
    measurementId: 'G-FLHTNVHWER',
  );
}