
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'Crudpage/CrudPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {

    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyBLoieiyGxGg_je1LX25kkG4WoigXP_cCE',
        authDomain: "YOUR_AUTH_DOMAIN",
        projectId: 'crudopration-a2795',
        storageBucket: "YOUR_STORAGE_BUCKET",
        messagingSenderId: '891232113789',
        appId: "com.example.firebasetestcrud",
      ),
    );
  } else {

    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CRUDPage(),
    );
  }
}



