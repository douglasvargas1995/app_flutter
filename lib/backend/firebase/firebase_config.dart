import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCDetw_jPjNIQ7XurZdN6yHizPTH7NBfKA",
            authDomain: "appaula-49ab2.firebaseapp.com",
            projectId: "appaula-49ab2",
            storageBucket: "appaula-49ab2.appspot.com",
            messagingSenderId: "956057912552",
            appId: "1:956057912552:web:6cd937e6e7b6b3e081355d"));
  } else {
    await Firebase.initializeApp();
  }
}
