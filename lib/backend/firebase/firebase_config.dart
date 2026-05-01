import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCScfxuRfWJOeSwukqDWOmtsj_rEhQ7bCU",
            authDomain: "teen-talk-tqno85.firebaseapp.com",
            projectId: "teen-talk-tqno85",
            storageBucket: "teen-talk-tqno85.firebasestorage.app",
            messagingSenderId: "903019634981",
            appId: "1:903019634981:web:91d93a15d6336c94fffacc"));
  } else {
    await Firebase.initializeApp();
  }
}
