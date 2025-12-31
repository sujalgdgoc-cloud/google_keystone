import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_keystone/screens/homepage.dart';
import 'package:google_keystone/screens/student_login.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
class Login_M extends StatelessWidget {
  const Login_M({super.key});

  @override

  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
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
                    child: Lottie.network("https://lottie.host/110ad338-be89-4f1c-b0aa-6c1c23d1509d/xc8RSwEhUd.json",
                      repeat: true,
        
                      frameRate: FrameRate(60),
                      fit: BoxFit.contain
        
                    ),
                  ),//anim
                  Container(
        
                    height: MediaQuery.of(context).size.height*0.1,
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text("Welcome To MENTORS-BASE please enter your information", style: GoogleFonts.dmSans(fontSize: 20,fontWeight: FontWeight.w200,color: Colors.white),textAlign: TextAlign.center,),
                  ),
                  Container(
                    child: Form(
                      key: _formKey,
        
                        child: Column(
                         children: [
                        TextFormField(
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
                                 suffixIcon: Icon(Icons.visibility_off,color: Colors.white,),
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
                             height: 10,
                           ),
                           ElevatedButton(onPressed: (){
                             if(_formKey.currentState!.validate()){
                               Get.defaultDialog(
                                 title: "Please enter the 6-digit verification code",
                                 titleStyle: GoogleFonts.dmSans(color: Colors.white,fontWeight: FontWeight.w200),
                                 content: TextField(
                                   style: TextStyle(color: Colors.white),
                                   decoration: InputDecoration(
                                     enabledBorder: OutlineInputBorder(
                                       borderSide: BorderSide(color: Colors.white),
                                       borderRadius: BorderRadius.circular(21),
        
                                     ),
                                     focusedBorder: OutlineInputBorder(
                                       borderSide: BorderSide(color: Colors.white),
                                       borderRadius: BorderRadius.circular(11),
                                     ),
                                   ),
                                 ),
                                 backgroundColor: Colors.black,
                                 confirm: ElevatedButton(onPressed: (){
                                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home_Page()));
                                 }, child: Text("Submit", style: TextStyle(color: Colors.black))),
                                 cancel: OutlinedButton(onPressed: (){
                                   Navigator.pop(context);
                                 }, child: Text("Cancel", style: TextStyle(color: Colors.white),))
                               );
                             }
                           }, child: Text("Continue",style: GoogleFonts.dmSans(fontWeight: FontWeight.w300,color: Colors.black),))
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
