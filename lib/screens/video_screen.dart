import 'package:flutter/material.dart';
import 'package:flutter_windowmanager_v2/flutter_windowmanager_v2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rich_readmore/rich_readmore.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class Video_Player extends StatefulWidget {
  const Video_Player({super.key});

  @override
  State<Video_Player> createState() => _Video_PlayerState();
}

class _Video_PlayerState extends State<Video_Player> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _videoPlayerController = VideoPlayerController.networkUrl( Uri.parse("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
    );
    _chewieController = ChewieController(videoPlayerController: _videoPlayerController,
      allowMuting: true,
      allowFullScreen: true,
      looping: true
    );
    secureScreen();
  }
  void secureScreen() async {
    await FlutterWindowManagerV2.addFlags(FlutterWindowManagerV2.FLAG_SECURE);
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
      body:  Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
              child: Text("Getting started with flutter", style: GoogleFonts.dmSans(fontSize: 20, fontWeight: FontWeight.w200, color: Colors.white))),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.zero,
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Center(child: Chewie(controller: _chewieController)
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(16),
            ),
            child: RichReadMoreText.fromString(text: 'Flutter is an open-source UI framework developed by Google that is used to build cross-platform applications. With Flutter, developers can create mobile, web, and desktop applications using a single codebase. This helps reduce development time and makes app maintenance easier One of the main concepts in Flutter is the widget. Everything in Flutter is a widget, including buttons, text, images, and layouts. Widgets describe how the user interface should look and behave. Flutter uses a widget tree structure, where widgets are nested inside each other to build complex layouts Flutter uses the Dart programming language. Dart is easy to learn, especially for beginners who already know languages like Java or C++. It supports object-oriented programming and provides features such as asynchronous programming using async and await.', settings: LengthModeSettings(trimLength: 100,
              lessStyle: TextStyle(color: Colors.cyan),
              moreStyle: TextStyle(color: Colors.cyan)
            ),textStyle: TextStyle(color: Colors.white70),),
          )
        ],
      ),
    );
  }
}
