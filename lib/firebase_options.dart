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
    apiKey: 'AIzaSyDtJ1_iLELNTxmuJmqUd3iE54yGBUoUD00',
    appId: '1:837169824672:web:0541d40dbbb75b1f6c5ac5',
    messagingSenderId: '837169824672',
    projectId: 'thewall-us3r1to2bymitchkoko',
    authDomain: 'thewall-us3r1to2bymitchkoko.firebaseapp.com',
    storageBucket: 'thewall-us3r1to2bymitchkoko.appspot.com',
    measurementId: 'G-46KDZ4R8FM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSlfy-92LQQiRN00U8a1W2c1sWkYph6RQ',
    appId: '1:837169824672:android:97238cc61f626d166c5ac5',
    messagingSenderId: '837169824672',
    projectId: 'thewall-us3r1to2bymitchkoko',
    storageBucket: 'thewall-us3r1to2bymitchkoko.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBecNP_HMGC9cqAEH99aJnK3EFHxbrbTOs',
    appId: '1:837169824672:ios:e7dc70b3b11c549b6c5ac5',
    messagingSenderId: '837169824672',
    projectId: 'thewall-us3r1to2bymitchkoko',
    storageBucket: 'thewall-us3r1to2bymitchkoko.appspot.com',
    iosClientId:
        '837169824672-a1sfjm77jbt15962pa98sj04e8t8cr05.apps.googleusercontent.com',
    iosBundleId: 'com.sambody.thewall',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBecNP_HMGC9cqAEH99aJnK3EFHxbrbTOs',
    appId: '1:837169824672:ios:32b4d584ced4a11c6c5ac5',
    messagingSenderId: '837169824672',
    projectId: 'thewall-us3r1to2bymaanit',
    storageBucket: 'thewall-us3r1to2bymitchkoko.appspot.com',
    iosClientId:
        '837169824672-r7ker3t147c5h1iph7jld92brlddsl2k.apps.googleusercontent.com',
    iosBundleId: 'com.sambody.thewall.RunnerTests',
  );
}
