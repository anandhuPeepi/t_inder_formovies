import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAqLHPxO8-21_nA2uBpMoXkf_dEYhypUxM",
            authDomain: "t-inder-formovies-5xosja.firebaseapp.com",
            projectId: "t-inder-formovies-5xosja",
            storageBucket: "t-inder-formovies-5xosja.appspot.com",
            messagingSenderId: "741110175081",
            appId: "1:741110175081:web:64466cfbfaacb0228659f8"));
  } else {
    await Firebase.initializeApp();
  }
}
