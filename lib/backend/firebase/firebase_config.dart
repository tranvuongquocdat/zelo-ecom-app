import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAFxDXv3952EwGj1JzGjZFlsG0YSazCF0E",
            authDomain: "zelo-9cedf.firebaseapp.com",
            projectId: "zelo-9cedf",
            storageBucket: "zelo-9cedf.appspot.com",
            messagingSenderId: "560235831366",
            appId: "1:560235831366:web:4624f59552553224db2a47",
            measurementId: "G-688KK7WRYG"));
  } else {
    await Firebase.initializeApp();
  }
}
