import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBB38a5HGE0STQuHEwwoiIju4G0dFME7Go",
            authDomain: "g2-pf-grupo-andino.firebaseapp.com",
            projectId: "g2-pf-grupo-andino",
            storageBucket: "g2-pf-grupo-andino.appspot.com",
            messagingSenderId: "973146068470",
            appId: "1:973146068470:web:dcf39eeaa04c48a890a3d7",
            measurementId: "G-DN5XLD229S"));
  } else {
    await Firebase.initializeApp();
  }
}
