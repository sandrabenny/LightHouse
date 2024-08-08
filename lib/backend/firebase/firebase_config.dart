import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAr8G8YZZB2pnv203Vm2ujg7QnNKlujdU8",
            authDomain: "lighthouse1-7ed24.firebaseapp.com",
            projectId: "lighthouse1-7ed24",
            storageBucket: "lighthouse1-7ed24.appspot.com",
            messagingSenderId: "888240749330",
            appId: "1:888240749330:web:d36b32f17d6ff2ee0c51cb",
            measurementId: "G-1TL9MCTRGW"));
  } else {
    await Firebase.initializeApp();
  }
}
