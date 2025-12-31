import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_keystone/screens/entry.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( options: const FirebaseOptions(
    apiKey: "AIzaSyDrDkIj92IbXlB5lNoqcZvufiAFWKMPjzw",
    authDomain: "keystones-bbafa.firebaseapp.com",
    projectId: "keystones-bbafa",
    storageBucket: "keystones-bbafa.firebasestorage.app",
    messagingSenderId: "386964305464",
    appId: "1:386964305464:web:919ab3a1b83f23ea9f18cd",
    measurementId: "G-18TB0TZ9FV",
  ),);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.cyan),
     // themeMode: ThemeMode.light,
     home: Entry(),
    );
  }
}
