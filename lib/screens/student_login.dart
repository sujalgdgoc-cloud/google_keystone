import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_keystone/auth_screens/verify.dart';
import 'package:google_keystone/screens/course_page.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';

class Login_S extends StatefulWidget {
  const Login_S({super.key});

  @override
  State<Login_S> createState() => _Login_SState();
}

class _Login_SState extends State<Login_S> {
  final _formKey = GlobalKey<FormState>();
  bool isObscure = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  signIn() async{
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
    } on FirebaseAuthException catch (e) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!context.mounted) return;

        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => Verify()),
        );
      });
    }

  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Google KeyStone",style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.black),),
        centerTitle: true,

      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.9,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.white,width: 2),
                // borderRadius: BorderRadius.circular(21)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 300,
                    width: MediaQuery.of(context).size.width*0.7,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(50),
                      // border: Border.all(color: Colors.white)
                    ),
                    child: Lottie.network("https://lottie.host/e626cc31-02e4-4345-aadc-b84685cc76e9/B6kYngmwXd.json",
                        repeat: true,
        
                        frameRate: FrameRate(60),
                        fit: BoxFit.contain
        
                    ),
                  ),//anim
                  Container(
        
                    height: MediaQuery.of(context).size.height*0.1,
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text("Welcome To STUDENT-BASE please enter your information", style: GoogleFonts.dmSans(fontSize: 20,fontWeight: FontWeight.w200,color: Colors.white),textAlign: TextAlign.center,),
                  ),
                  Container(
                    child: Form(
                        key: _formKey,
        
                        child: Column(
                          children: [
                            TextFormField(
                              controller: email,
                              style: TextStyle(color: Colors.white),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please a valid email id';
                                }
                                if (!GetUtils.isEmail(value)) {
                                  return "Enter a valid email";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.mail, color: Colors.white,),
                                  hint: Text("E-mail", style: GoogleFonts.dmSans(color: Colors.white),),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21),
                                    borderSide: BorderSide(color: Colors.white),
        
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(11),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(11),
                                  )
        
                              ),
                            ),//email
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: password,
                              obscureText: isObscure,
                              style: TextStyle(color: Colors.white),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter the correct password';
                                }
                                // if(!GetUtils.isLengthGreaterThan(6, 16))
                                //   {
                                //     return 'Password is greater than 6 digits';
                                //   }
                                return null;
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock, color: Colors.white,),
                                  suffixIcon: IconButton(onPressed: (){
                                    setState(() {
                                      isObscure = !isObscure;
                                    });

                                  }, icon: Icon(isObscure?Icons.visibility_off : Icons.visibility,color: Colors.white,),),
                                  hint: Text("password", style: GoogleFonts.dmSans(color: Colors.white),),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21),
                                    borderSide: BorderSide(color: Colors.white),
        
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(11),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(11),
                                  )
        
                              ),
                            ),//password,
        
                            SizedBox(
                              height: 14,
                            ),
                            ElevatedButton(onPressed: (){
                              if(_formKey.currentState!.validate()){
                                signIn();
                              }
                            }
                            , child: Text("Continue",style: GoogleFonts.dmSans(fontWeight: FontWeight.w300,color: Colors.black),))
                          ],
                        )
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
