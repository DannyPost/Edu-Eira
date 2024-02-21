import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCkA8LumjnREhX2ODgYBT5dOaVrTX1YR7U",
            authDomain: "tir-oideachas.firebaseapp.com",
            projectId: "tir-oideachas",
            storageBucket: "tir-oideachas.appspot.com",
            messagingSenderId: "1065034490111",
            appId: "1:1065034490111:web:470eb3bac4109d8c5eacca",
            measurementId: "G-M7P7HXBGEV"));
  } else {
    await Firebase.initializeApp();
  }
}
