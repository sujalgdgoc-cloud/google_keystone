import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_keystone/screens/video_screen.dart';
class Video_s extends StatefulWidget {
  const Video_s({super.key});

  @override
  State<Video_s> createState() => _Video_sState();
}

class _Video_sState extends State<Video_s> {
final user = FirebaseAuth.instance.currentUser;

signout() async{
  await FirebaseAuth.instance.signOut();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (() =>signout()), child: Icon(Icons.login_rounded),),
        appBar: AppBar(

          backgroundColor: Colors.white,
          title: Text("Google KeyStone",style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.black),),
          centerTitle: true,
          // automaticallyImplyLeading: false,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child:  Text("${user!.email}", style: TextStyle(color: Colors.white,fontSize: 20 ),),),
              ListTile(
                  leading: Icon(Icons.support_agent_outlined),
                  title: Text("Report",)

              ),
              ListTile(
                  leading: Icon(Icons.settings),
                  title: Text( "Settings",)

              ),
              ListTile(
                  leading: Icon(Icons.login_outlined),
                  title: Text("Logout",style: TextStyle(color: Colors.red),)

              )
            ],
          ),
        ),
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.all(10),
        shrinkWrap: true,

        children: [

          Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white,width: 1)
              ),
              margin: EdgeInsets.all(20),
              child: Text("     Video Lectures", style: GoogleFonts.dmSans(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 20),),
              height: 30,
              width: 200,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            
            height: 30,
            child: Center(child: Text("Monday's content", style: GoogleFonts.dmSans(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 20),)),
          ),
          InkWell(
            focusColor: Colors.white,
            onTap: (){

            },
            child: Container( margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),
                // shape: Border.all(color: Colors.redAccent, width: 1),
                leading: Container(
                  width: 50,
                  color: Colors.blue,

                ),
                contentPadding: EdgeInsets.all(5),
                title: Text("Lecture - 1 Getting started with flutter",style: GoogleFonts.dmSans(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 15),),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            focusColor: Colors.white,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Video_Player()));
            },
            child: Container( margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),
                // shape: Border.all(color: Colors.redAccent, width: 1),
                leading: Container(
                  width: 50,
                  color: Colors.red,
                ),
                contentPadding: EdgeInsets.all(5),
                title: Text("Lecture - 2 Basic of dart",style: GoogleFonts.dmSans(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 15),),

              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 30,
            child: Center(child: Text("Saturday's content", style: GoogleFonts.dmSans(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 20),)),
          ),
          InkWell(
            focusColor: Colors.white,
            onTap: (){

            },
            child: Container( margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),


                leading: Container(
                  width: 50,
                  color: Colors.green,
                ),
                contentPadding: EdgeInsets.all(5),
                title: Text("Lecture - 3 Concepts of widgets",style: GoogleFonts.dmSans(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 15),),

              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            focusColor: Colors.white,
            onTap: (){

            },
            child: Container( margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),
                // shape: Border.all(color: Colors.redAccent, width: 1),
                leading: Container(
                  width: 50,
                  color: Colors.purple,
                ),
                contentPadding: EdgeInsets.all(5),
                title: Text("Lecture - 4 Color theory",style: GoogleFonts.dmSans(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 15),),

              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 30,
            child: Center(child: Text("Wednesday's content", style: GoogleFonts.dmSans(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 20),)),
          ),
          InkWell(
            focusColor: Colors.white,
            onTap: (){

            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),
                // shape: Border.all(color: Colors.redAccent, width: 1),
                leading: Container(
                  width: 50,
                  color: Colors.yellowAccent,
                ),
                contentPadding: EdgeInsets.all(5),
                title: Text("Lecture - 5 Video Theme",style: GoogleFonts.dmSans(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 15),),

              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            focusColor: Colors.white,
            onTap: (){

            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),
                // shape: Border.all(color: Colors.redAccent, width: 1),
                leading: Container(
                  width: 50,
                  color: Colors.cyan,
                ),
                contentPadding: EdgeInsets.all(5),
                title: Text("Lecture - 6 Today's task",style: GoogleFonts.dmSans(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 15),),

              ),
            ),
          ),

        ],
      )

    );
  }
}
