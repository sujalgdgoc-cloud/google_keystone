import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:cupertino_calendar_picker/cupertino_calendar_picker.dart';
class MyMeet extends StatefulWidget {
  const MyMeet({super.key});

  @override

  State<MyMeet> createState() => _MyMeetState();
}

class _MyMeetState extends State<MyMeet> {

  @override
  Widget build(BuildContext context) {
    bool taskReview = false;
    bool lecture = false;
    bool announcement = false;
    Widget bottomSheetContent()
    {
      return Column(
        children: [
          Text("Please select the meet details", style: GoogleFonts.dmSans(fontSize: 15, fontWeight: FontWeight.w200, color: Colors.white),),

          Container(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: CupertinoCalendarPickerButton(
              minimumDateTime: DateTime(2024, 7, 10),
              maximumDateTime: DateTime(2025, 7, 10),
              initialDateTime: DateTime(2024, 8, 15, 9, 41),
              currentDateTime: DateTime(2024, 8, 15),
              mode: CupertinoCalendarMode.dateTime,
              timeLabel: 'Time',
              onDateTimeChanged: (date) {},
            ),
          ),
          SizedBox(height: 5,),
          ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: Text("Title: ", style: GoogleFonts.dmSans(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
            title: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(

                  hint: Text("Enter the agenda of meet", style: TextStyle(color: Colors.white, fontSize: 15),),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(color: Colors.white)
                  ),
                focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(21),
                     borderSide: BorderSide(color: Colors.white)
              ),
            ),
          ),

          ),
                  CheckboxListTile(value: taskReview, onChanged:(value) =>  setState(() => taskReview = value!),
                    title: Text("Task Review", style: GoogleFonts.dmSans(),),
                    tileColor: Colors.white,
                    titleAlignment: ListTileTitleAlignment.center
                  ),
                  CheckboxListTile(value: lecture, onChanged:(value) =>  setState(() => lecture = value!),
                      title: Text("Lecture", style: GoogleFonts.dmSans(),),
                      tileColor: Colors.white,
                      titleAlignment: ListTileTitleAlignment.center
                  ),
                  CheckboxListTile(value: announcement, onChanged:(value) =>  setState(() => announcement = value!),
                      title: Text("Announcement", style: GoogleFonts.dmSans(),),
                      tileColor: Colors.white,
                      titleAlignment: ListTileTitleAlignment.center
                  ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Cancel", style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,fontSize: 15, color: Colors.white),)),
                ElevatedButton(onPressed: (){}, child: Text("Confirm", style: GoogleFonts.dmSans(fontSize: 15, fontWeight: FontWeight.w200, color: Colors.black),))
              ],
            ),
          )
        ],
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Google KeyStone",style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.black),),
        centerTitle: true,
        automaticallyImplyLeading: false,

      ),
      backgroundColor: Colors.black,
      body: Column(

        children: [
          SizedBox(height: 10,),
          Center(child: Text("Create A meet link",style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.white, fontSize: 20),)),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            Get.bottomSheet(bottomSheetContent());
          }, child:  Text("+ Add a meet",style: GoogleFonts.dmSans(fontWeight: FontWeight.w200,color: Colors.black, fontSize: 20),),

          )],
      )
      ,
    );

  }
}
