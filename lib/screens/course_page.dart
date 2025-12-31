import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_keystone/screens/homepage.dart';

class MyCourse extends StatelessWidget {
  const MyCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Google KeyStone",style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.black),),
        centerTitle: true,
        automaticallyImplyLeading: false,

      ),
      backgroundColor: Colors.black,
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white)
          ),
            child: Text("Select the required course",style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.white, fontSize: 20))),

        Expanded(
          child: ListView(
            children: [
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: OutlinedButton(onPressed: (){}, child:  Text("Artificial Intelligence",style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.white, fontSize: 20),))),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: OutlinedButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home_Page()));
                  }, child:  Text("App Development",style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.white, fontSize: 20),),)),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(16),
                  ),child: OutlinedButton(onPressed: (){}, child:  Text("Web Development",style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.white, fontSize: 20),),)),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: OutlinedButton(onPressed: (){}, child:  Text("Backend",style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.white, fontSize: 20),),)),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: OutlinedButton(onPressed: (){}, child:  Text("Game Development",style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.white, fontSize: 20),),))
            ],
          ),
        )
      ],),
    );
  }
}
