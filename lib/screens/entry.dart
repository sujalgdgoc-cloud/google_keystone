import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_keystone/auth_screens/wrapper.dart';
import 'package:google_keystone/screens/mentor_login.dart';
import 'package:google_keystone/screens/student_login.dart';
import 'package:lottie/lottie.dart';

class Entry extends StatefulWidget {
  const Entry({super.key});

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text("Google KeyStone", style: GoogleFonts.dmSans(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.white),),
          ),
          //animation
          Container(
            // decoration: BoxDecoration(
            //   shape: BoxShape.circle,
            //   border: Border.all(color: Colors.white)
            //
            // ),
            margin: EdgeInsets.all(25),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.2,
            child:Lottie.network(
              'https://lottie.host/e0d9bc65-699b-4635-945f-977544541845/OSWxn4Jz65.json',
              frameRate: FrameRate(60),
              repeat: true

            ),

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                margin: EdgeInsets.all(10),
                child: Text("Welcome To Google KeyStone education program for google devs", style: GoogleFonts.dmSans(fontWeight: FontWeight.w300,color: Colors.white, fontSize: 25),textAlign: TextAlign.center,),
              ),//text1
              SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                margin: EdgeInsets.all(20),
                child: Text("Please Select Your Role", style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.white, fontSize: 20),textAlign: TextAlign.center,),
              ),//text2
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                margin: EdgeInsets.all(10),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login_M()));
                    }, child: Text("Mentor",style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.white, fontSize: 20))),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Wrapper()));
                    }, child: Text("Student",style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.black, fontSize: 20)))
                  ],
                )
              ),//buttons


            ],
          )

        ],
      ),
    );
  }
}
