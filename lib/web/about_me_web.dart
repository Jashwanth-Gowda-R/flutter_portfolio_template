import 'package:flutter/material.dart';

import 'package:my_portfolio_app/widgets/drawer_web.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';
import 'package:my_portfolio_app/widgets/skills.dart';
import 'package:my_portfolio_app/widgets/tabs_web.dart';
import 'package:my_portfolio_app/widgets/whatido.dart';

class AboutMeWeb extends StatefulWidget {
  const AboutMeWeb({super.key});

  @override
  State<AboutMeWeb> createState() => _AboutMeWebState();
}

class _AboutMeWebState extends State<AboutMeWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerWeb(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 3),
            TabsWeb(title: 'Home', route: '/'),
            Spacer(),
            TabsWeb(title: 'Works', route: '/works'),
            Spacer(),
            TabsWeb(title: 'Blogs', route: '/blog'),
            Spacer(),
            TabsWeb(title: 'About', route: '/about'),
            Spacer(),
            TabsWeb(title: 'Contact', route: '/contact'),
            Spacer(),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            // SizedBox(height: 90),
            // image avatar
            SizedBox(
              height: 500.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // about me
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Sansbold(text: 'About Me', size: 35),
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
                        Wrap(
                          spacing: 4,
                          runSpacing: 4,
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
                  ),
                  const CircleAvatar(
                    radius: 150, // Larger avatar
                    backgroundColor: Colors.tealAccent,
                    child: CircleAvatar(
                      radius: 147,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('picture.jpeg'),
                    ),
                  ),
                ],
              ),
            ),
            // What I Do Section - Complete
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Web Development
                AnimatedCard(
                  text: 'Web Development (Flutter)',
                  imagePath: 'assets/webL.png',
                  reverse: false,
                ),
                SizedBox(
                  width: widthDevice / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Sansbold(text: 'Web Development (Flutter)', size: 20),
                      const SizedBox(height: 10.0),
                      Sans(
                        text:
                            'I\'m here to build your presence online with state-of-the-art web apps.',
                        size: 15.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30.0),

            // Mobile App Development
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: widthDevice / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Sansbold(
                        text: 'Mobile App Development (Flutter)',
                        size: 20,
                      ),
                      const SizedBox(height: 10.0),
                      Sans(
                        text:
                            'Do you need a high-performance, responsive, and beautiful app? Don\'t worry, I\'ve got you covered.',
                        size: 15.0,
                      ),
                    ],
                  ),
                ),
                AnimatedCard(
                  text: 'Mobile App Development (Flutter)',
                  imagePath: 'assets/app.png',
                  reverse: true,
                ),
              ],
            ),

            const SizedBox(height: 30.0),

            // Backend Development
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedCard(
                  text: 'Backend Development (Firebase)',
                  imagePath: 'assets/firebase.png',
                  reverse: false,
                ),
                SizedBox(
                  width: widthDevice / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Sansbold(
                        text: 'Backend Development (Firebase)',
                        size: 20,
                      ),
                      const SizedBox(height: 10.0),
                      Sans(
                        text:
                            'Do you want your back-end to be highly scalable and secure? Let\'s have a conversation on how I can help you with that.',
                        size: 15.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}

