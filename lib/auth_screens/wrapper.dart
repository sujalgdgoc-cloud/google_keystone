import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_keystone/auth_screens/verify.dart';
import 'package:google_keystone/screens/homepage.dart';
import 'package:google_keystone/screens/mentor_login.dart';

import '../screens/student_login.dart';
class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder: (context, snapshot)
          {
            if(snapshot.hasData) {
              return Home_Page();
            }
            else {

              return Login_S();
            }
          }
      ),
    );
  }
}
