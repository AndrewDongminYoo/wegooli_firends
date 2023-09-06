// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

// 📦 Package imports:
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

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
        throw UnsupportedError('DefaultFirebaseOptions가 윈도우즈에 대해 구성되지 않았습니다 - '
            'FlutterFire CLI를 다시 실행하여 재구성할 수 있습니다.');
      case TargetPlatform.linux:
        throw UnsupportedError('DefaultFirebaseOptions가 리눅스에 대해 구성되지 않았습니다.'
            'FlutterFire CLI를 다시 실행하여 재구성할 수 있습니다.');
      default:
        throw UnsupportedError('이 플랫폼에서는 DefaultFirebaseOptions가 지원되지 않습니다.');
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA39vYg1nXwRh2Gs6ReH-4ybl5aUfQH90g',
    appId: '1:599714471577:web:39ecc9911a1c7bad51e208',
    messagingSenderId: '599714471577',
    projectId: 'wegooli-friends',
    authDomain: 'wegooli-friends.firebaseapp.com',
    storageBucket: 'wegooli-friends.appspot.com',
    measurementId: 'G-70CQC082CG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBz3CBx4MFp_dnxSZSakAq-OFP4nhhFV-Y',
    appId: '1:599714471577:android:285b172998ea40d051e208',
    messagingSenderId: '599714471577',
    projectId: 'wegooli-friends',
    storageBucket: 'wegooli-friends.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDrxNf4neI_iQNdFqU8fgqvg1DOPG9IthY',
    appId: '1:599714471577:ios:8e60449ec667961551e208',
    messagingSenderId: '599714471577',
    projectId: 'wegooli-friends',
    storageBucket: 'wegooli-friends.appspot.com',
    iosClientId: '599714471577-1n98u34fhl45msv8vg9s521p87836r6s.apps.googleusercontent.com',
    iosBundleId: 'com.wegooli.friends',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDrxNf4neI_iQNdFqU8fgqvg1DOPG9IthY',
    appId: '1:599714471577:ios:c902dd991420f49d51e208',
    messagingSenderId: '599714471577',
    projectId: 'wegooli-friends',
    storageBucket: 'wegooli-friends.appspot.com',
    iosClientId: '599714471577-p5s9qoaj46o3qf8ls2pg4drbo647ei3m.apps.googleusercontent.com',
    iosBundleId: 'com.radius.wegooliFriends.RunnerTests',
  );
}
