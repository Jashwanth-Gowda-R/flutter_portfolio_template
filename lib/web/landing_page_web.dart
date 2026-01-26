import 'package:flutter/material.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';
import 'package:my_portfolio_app/widgets/skills.dart';
import 'package:my_portfolio_app/widgets/tabs_web.dart';
import 'package:my_portfolio_app/widgets/whatido.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(backgroundColor: Colors.white),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 3),
            TabsWeb(title: 'Home'),
            Spacer(),
            TabsWeb(title: 'Works'),
            Spacer(),
            TabsWeb(title: 'Blogs'),
            Spacer(),
            TabsWeb(title: 'About'),
            Spacer(),
            TabsWeb(title: 'Contact'),
            Spacer(),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          // 1st page
          SizedBox(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Sansbold(text: 'Hi, I am', size: 15),
                    ),
                    SizedBox(height: 15),
                    Sansbold(text: 'Jashwanth Gowda R', size: 55),

                    Sans(
                      text:
                          'Flutter Developer | Android Developer | Web Developer | iOS Developer ',
                      size: 30,
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.email, size: 15),
                        SizedBox(width: 10),
                        Sans(text: 'webdevjash6@gmail.com', size: 15),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 15),
                        SizedBox(width: 10),
                        Sans(text: 'Bangalore, India', size: 15),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 148,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('picture.jpeg'),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // 2nd section - about me
          SizedBox(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/web.jpg', height: heightDevice / 1.7),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Sansbold(text: 'About Me', size: 30),
                    SizedBox(height: 15),
                    Sans(
                      text:
                          'I\'m Jashwanth Gowda R, A Flutter developer based in Bangalore, India.',
                      size: 15,
                    ),
                    SizedBox(height: 5),

                    Sans(
                      text:
                          'I have a Total 4+ years of experience in Software development and 3 years of experience in Flutter development.',
                      size: 15,
                    ),
                    SizedBox(height: 5),
                    Sans(
                      text:
                          'I have a passion for creating mobile and web applications using Flutter and Dart.',
                      size: 15,
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Skills(text: 'Flutter'),
                        SizedBox(width: 10),
                        Skills(text: 'Dart'),
                        SizedBox(width: 10),
                        Skills(text: 'Firebase'),
                        SizedBox(width: 10),
                        Skills(text: 'Android'),
                        SizedBox(width: 10),
                        Skills(text: 'IOS'),
                        SizedBox(width: 10),
                        Skills(text: 'Web'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          // 3rd section
          SizedBox(
            height: heightDevice / 1.3,
            child: Column(
              children: [
                Sansbold(text: 'What I Do?', size: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WhatIDO(
                      text: 'Web Development (Flutter)',
                      imagePath: 'assets/webL.png',
                    ),
                    WhatIDO(
                      text: 'Mobile App Development (Flutter)',
                      imagePath: 'assets/app.png',
                    ),
                    WhatIDO(
                      text: 'Backend Development(Firebase)',
                      imagePath: 'assets/firebase.png',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
