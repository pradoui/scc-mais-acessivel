import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBBFgcZEhg5KlY-lE4NofaRgn-EKI2rqIk",
            authDomain: "sccmaisacessivel.firebaseapp.com",
            projectId: "sccmaisacessivel",
            storageBucket: "sccmaisacessivel.firebasestorage.app",
            messagingSenderId: "981882379443",
            appId: "1:981882379443:web:c489214b8360407b7324c6"));
  } else {
    await Firebase.initializeApp();
  }
}
