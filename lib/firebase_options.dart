import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA_LJBJNOKjaRrP57x-jsH3s9TqGYIiUpU',
    appId: '1:139171431687:web:b6207fffea8081220df1a2',
    messagingSenderId: '139171431687',
    projectId: 'restaurant-app-23846',
    authDomain: 'restaurant-app-23846.firebaseapp.com',
    storageBucket: 'restaurant-app-23846.firebasestorage.app',
    measurementId: 'G-HGPJT4MY5Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA6INrVCgq36OzqGJJGYkE-M1V3Bei7woQ',
    appId: '1:139171431687:android:a1b7f11916a6e3e60df1a2',
    messagingSenderId: '139171431687',
    projectId: 'restaurant-app-23846',
    storageBucket: 'restaurant-app-23846.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA_LJBJNOKjaRrP57x-jsH3s9TqGYIiUpU',
    appId: '1:139171431687:web:91b472be845976270df1a2',
    messagingSenderId: '139171431687',
    projectId: 'restaurant-app-23846',
    authDomain: 'restaurant-app-23846.firebaseapp.com',
    storageBucket: 'restaurant-app-23846.firebasestorage.app',
    measurementId: 'G-R8VQPL1VD0',
  );
}