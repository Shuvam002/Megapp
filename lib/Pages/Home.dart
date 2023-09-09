// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double aboutUsTextPosition = 100.0; // Initial position for "About Us" text

  @override
  void initState() {
    super.initState();

    // Add an animation that moves the "About Us" text
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        aboutUsTextPosition = 0.0; // Move it to the original position
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 215, 12, 70),
        leading: Transform.scale(
          scale: 2,
          child: Image.asset(
            'assets/mega1.png',
            width: 72,
            height: 72,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg4.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          // Center the content horizontally and vertically
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TyperAnimatedTextKit(
                  // Typing animation for "MEGATRONIX"
                  text: ['MEGATRONIX'],
                  textStyle: GoogleFonts.jetBrainsMono(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  speed: Duration(milliseconds: 200),
                ),
                SizedBox(height: 8),
                Stack(children: [
                  AnimatedPositioned(
                      duration: const Duration(seconds: 1),
                      child: Text(
                        "The official Tech Club of Meghnad Saha Institute of Technology",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ))
                ]),
                // Container(
                //   child: AnimatedPositioned(
                //     // Animate the position of "About Us" text
                //     duration: const Duration(seconds: 1),
                //     curve: Curves.easeInOut,
                //     top: aboutUsTextPosition,
                //     child: Text(
                //       'The official Tech Club Of Meghnad Saha Institute Of Technology',
                //       textAlign: TextAlign.center,
                //       style: GoogleFonts.lato(
                //         fontSize: 13,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(height: 38),
                Text(
                  'About Us',
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 15),
                Opacity(
                  opacity: 0.8,
                  child: Container(
                    color: Colors.black.withOpacity(0.6),
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          'What Is Megatronix?',
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Megatronix, The Official Technical Club Of Meghnad Saha Institute Of Technology, Aims To Be A Platform To Cultivate Ideas And To Build Them Up In A Way That They Are Not Confined Within A Certain Limit. Megatronix Was Founded In 2009 By A Group Of Five Students As A Robotics Club In The College. That Group Of Five Is Now A Team Of Hundred! To Know More, Check Out Our Social Media Platforms.',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
