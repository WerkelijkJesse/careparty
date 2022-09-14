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
    apiKey: 'AIzaSyCSflZMko7VyC-09KvVGtxja79QCbkGMAA',
    appId: '1:799366213828:web:6800b66c724806347f1991',
    messagingSenderId: '799366213828',
    projectId: 'care-party',
    authDomain: 'care-party.firebaseapp.com',
    storageBucket: 'care-party.appspot.com',
    measurementId: 'G-0B1FY9TYLE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCYBF94cMPT6PX2Mtli70jW6CetqKaa5pk',
    appId: '1:799366213828:android:ad747356f65583337f1991',
    messagingSenderId: '799366213828',
    projectId: 'care-party',
    storageBucket: 'care-party.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4x7mVCWfMS11UvCRRVtB-gmEEnS6KHIg',
    appId: '1:799366213828:ios:7d122a800f74570d7f1991',
    messagingSenderId: '799366213828',
    projectId: 'care-party',
    storageBucket: 'care-party.appspot.com',
    iosClientId: '799366213828-ajh2347lqum0qv1chuj7jfakc576pmnp.apps.googleusercontent.com',
    iosBundleId: 'com.example.careparty',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA4x7mVCWfMS11UvCRRVtB-gmEEnS6KHIg',
    appId: '1:799366213828:ios:7d122a800f74570d7f1991',
    messagingSenderId: '799366213828',
    projectId: 'care-party',
    storageBucket: 'care-party.appspot.com',
    iosClientId: '799366213828-ajh2347lqum0qv1chuj7jfakc576pmnp.apps.googleusercontent.com',
    iosBundleId: 'com.example.careparty',
  );
}