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
    apiKey: 'AIzaSyBTHGGDLpsZF2jgRFevnpz0t6srJq7OD6M',
    appId: '1:1002810793577:web:b10edf82ed46532ad9ccf8',
    messagingSenderId: '1002810793577',
    projectId: 'exoplanet-odyssey',
    authDomain: 'exoplanet-odyssey.firebaseapp.com',
    storageBucket: 'exoplanet-odyssey.appspot.com',
    measurementId: 'G-NNLFPY5FQD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXzYfn7aKiykJB5z9qeuMnAt7UM1GtJVE',
    appId: '1:1002810793577:android:55d45f56773b7575d9ccf8',
    messagingSenderId: '1002810793577',
    projectId: 'exoplanet-odyssey',
    storageBucket: 'exoplanet-odyssey.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGHqm3WQtOImqku90EB-nF3ibFFtEHX_E',
    appId: '1:1002810793577:ios:d40846eb22e77d76d9ccf8',
    messagingSenderId: '1002810793577',
    projectId: 'exoplanet-odyssey',
    storageBucket: 'exoplanet-odyssey.appspot.com',
    iosBundleId: 'com.example.exoplanetOdyssey',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDGHqm3WQtOImqku90EB-nF3ibFFtEHX_E',
    appId: '1:1002810793577:ios:d40846eb22e77d76d9ccf8',
    messagingSenderId: '1002810793577',
    projectId: 'exoplanet-odyssey',
    storageBucket: 'exoplanet-odyssey.appspot.com',
    iosBundleId: 'com.example.exoplanetOdyssey',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBTHGGDLpsZF2jgRFevnpz0t6srJq7OD6M',
    appId: '1:1002810793577:web:8713d8c875c52a9ed9ccf8',
    messagingSenderId: '1002810793577',
    projectId: 'exoplanet-odyssey',
    authDomain: 'exoplanet-odyssey.firebaseapp.com',
    storageBucket: 'exoplanet-odyssey.appspot.com',
    measurementId: 'G-483ED65XNK',
  );
}
