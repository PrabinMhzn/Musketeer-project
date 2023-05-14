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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC84jP1rkzaH94oMch5ApKYSlsgOKT6xpE',
    appId: '1:101393840835:android:00a62662d01ebffe3bc076',
    messagingSenderId: '101393840835',
    projectId: 'musketeerappproject',
    databaseURL: 'https://musketeerappproject-default-rtdb.firebaseio.com',
    storageBucket: 'musketeerappproject.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBJdr75YdCaYcfdwgQJZoHVIEa6W0RM7Fg',
    appId: '1:101393840835:ios:6f42d513d2e3b0053bc076',
    messagingSenderId: '101393840835',
    projectId: 'musketeerappproject',
    databaseURL: 'https://musketeerappproject-default-rtdb.firebaseio.com',
    storageBucket: 'musketeerappproject.appspot.com',
    iosClientId: '101393840835-68jnhpr0arpk624hi64oa4g38n4qhs92.apps.googleusercontent.com',
    iosBundleId: 'com.example.musketeerApp',
  );
}
