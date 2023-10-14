import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC3SllSiW0lzp_TXYaagsXqB69Mq71RtvM",
            authDomain: "kensys-cybercup.firebaseapp.com",
            projectId: "kensys-cybercup",
            storageBucket: "kensys-cybercup.appspot.com",
            messagingSenderId: "980494912084",
            appId: "1:980494912084:web:6b9dc81b9cc8f7cff03bc1",
            measurementId: "G-G52G6XV3QR"));
  } else {
    await Firebase.initializeApp();
  }
}
