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
    apiKey: 'AIzaSyBjRo-ItaolpKg5lAmu3f8t_dzY2g-8IoQ',
    appId: '1:344893816209:web:c6a72e0202256a588aae30',
    messagingSenderId: '344893816209',
    projectId: 'spotify00',
    authDomain: 'spotify00.firebaseapp.com',
    storageBucket: 'spotify00.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA6Rluth7G5Rq39qxkNEgv3QDAP3UdW6D8',
    appId: '1:344893816209:android:2b6960276ac87fb28aae30',
    messagingSenderId: '344893816209',
    projectId: 'spotify00',
    storageBucket: 'spotify00.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAnoV_NjZ8udcgX36TsxSqWZnpopAJ_Ad4',
    appId: '1:344893816209:ios:80c2a77f938ebbea8aae30',
    messagingSenderId: '344893816209',
    projectId: 'spotify00',
    storageBucket: 'spotify00.firebasestorage.app',
    iosBundleId: 'com.example.spotifyCloneApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAnoV_NjZ8udcgX36TsxSqWZnpopAJ_Ad4',
    appId: '1:344893816209:ios:80c2a77f938ebbea8aae30',
    messagingSenderId: '344893816209',
    projectId: 'spotify00',
    storageBucket: 'spotify00.firebasestorage.app',
    iosBundleId: 'com.example.spotifyCloneApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBjRo-ItaolpKg5lAmu3f8t_dzY2g-8IoQ',
    appId: '1:344893816209:web:a7cf94474bc851168aae30',
    messagingSenderId: '344893816209',
    projectId: 'spotify00',
    authDomain: 'spotify00.firebaseapp.com',
    storageBucket: 'spotify00.firebasestorage.app',
  );
}
