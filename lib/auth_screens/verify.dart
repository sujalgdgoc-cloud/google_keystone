import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Google KeyStone",style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.black),),
        centerTitle: true,

      ),
      body: const Column(
        children: [
          GetSnackBar(
            title: "Error",
            icon: Icon(Icons.account_circle),
            message: "The account information is either false or your not register in the database",
          )
        ],
      ),
    );
  }
}
