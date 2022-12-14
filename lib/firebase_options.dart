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
    apiKey: 'AIzaSyCCXmCErTyi3yU8kKooMuuNA5qPzYIQzs4',
    appId: '1:754557593773:web:79218f6a596695b60d7e24',
    messagingSenderId: '754557593773',
    projectId: 'machinetest-3871b',
    authDomain: 'machinetest-3871b.firebaseapp.com',
    storageBucket: 'machinetest-3871b.appspot.com',
    measurementId: 'G-1NY816WJRT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPIszSJRPCVz3LqOX7-fJqems5KfbMHaY',
    appId: '1:754557593773:android:5e940defc0ae0a790d7e24',
    messagingSenderId: '754557593773',
    projectId: 'machinetest-3871b',
    storageBucket: 'machinetest-3871b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC3tP1ucqk-ZT50b8Q_4k8VEzutvECRbqI',
    appId: '1:754557593773:ios:a47e68709e7c84dc0d7e24',
    messagingSenderId: '754557593773',
    projectId: 'machinetest-3871b',
    storageBucket: 'machinetest-3871b.appspot.com',
    iosClientId: '754557593773-0juf63m9d8bi88c3ppm304sesbh5rid8.apps.googleusercontent.com',
    iosBundleId: 'com.example.wit',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC3tP1ucqk-ZT50b8Q_4k8VEzutvECRbqI',
    appId: '1:754557593773:ios:a47e68709e7c84dc0d7e24',
    messagingSenderId: '754557593773',
    projectId: 'machinetest-3871b',
    storageBucket: 'machinetest-3871b.appspot.com',
    iosClientId: '754557593773-0juf63m9d8bi88c3ppm304sesbh5rid8.apps.googleusercontent.com',
    iosBundleId: 'com.example.wit',
  );
}
