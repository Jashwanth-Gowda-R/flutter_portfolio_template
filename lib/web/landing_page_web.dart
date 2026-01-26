import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';
import 'package:my_portfolio_app/widgets/tabs_web.dart';

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
        ],
      ),
    );
  }
}
