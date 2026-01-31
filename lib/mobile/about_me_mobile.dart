import 'package:flutter/material.dart';
import 'package:my_portfolio_app/widgets/darwer_mobile_view.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';
import 'package:my_portfolio_app/widgets/skills.dart';
import 'package:my_portfolio_app/widgets/whatido.dart';

class AboutMeMobile extends StatefulWidget {
  const AboutMeMobile({super.key});

  @override
  State<AboutMeMobile> createState() => _AboutMeMobileState();
}

class _AboutMeMobileState extends State<AboutMeMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black, size: 35),
        ),
        endDrawer: DrawerMobileView(),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
              // image avatar
              const CircleAvatar(
                radius: 120, // Larger avatar
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 115,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('picture.jpeg'),
                ),
              ),
              SizedBox(height: 25),
              // about me
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
              SizedBox(height: 90),
              // what i do
              // Web development section

              // 3rd section
              Container(
                // height: heightDevice / 1.3,
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Sansbold(text: 'What I Do?', size: 35),
                    SizedBox(height: 25),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // AnimatedCard(
                        //   text: 'Web Development (Flutter)',
                        //   imagePath: 'assets/webL.png',
                        //   reverse: false,
                        // ),
                        // SizedBox(height: 15),
                        // AnimatedCard(
                        //   text: 'Mobile App Development (Flutter)',
                        //   imagePath: 'assets/app.png',
                        //   reverse: true,
                        // ),
                        // SizedBox(height: 15),
                        // AnimatedCard(
                        //   text: 'Backend Development(Firebase)',
                        //   imagePath: 'assets/firebase.png',
                        //   reverse: false,
                        // ),
                        // SizedBox(height: 15),
                        WhatIDoWidget(
                          imgPath: 'assets/webL.png',
                          heading: 'Web Development (Flutter)',
                          subHeading:
                              'I\'m here to build your presence online with state-of-the-art web apps.',
                          reverse: false,
                        ),
                        SizedBox(height: 15),
                        WhatIDoWidget(
                          imgPath: 'assets/app.png',
                          heading: 'Mobile App Development (Flutter)',
                          subHeading:
                              'Do you need a high-performance, responsive, and beautiful app? Don\'t worry, I\'ve got you covered.',
                          reverse: true,
                        ),
                        SizedBox(height: 15),
                        WhatIDoWidget(
                          imgPath: 'assets/firebase.png',
                          heading: 'Backend Development(Firebase)',
                          subHeading:
                              'Do you want your back-end to be highly scalable and secure? Let\'s have a conversation on how I can help you with that.',
                          reverse: false,
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                    const SizedBox(height: 40.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WhatIDoWidget extends StatelessWidget {
  final String imgPath;
  final String heading;
  final String subHeading;
  final bool reverse;

  const WhatIDoWidget({
    super.key,
    required this.imgPath,
    required this.heading,
    required this.subHeading,
    required this.reverse,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedCard(imagePath: imgPath, width: 200.0, reverse: reverse),
        const SizedBox(height: 30.0),
        Sansbold(text: heading, size: 20),
        const SizedBox(height: 10.0),
        Sans(text: subHeading, size: 15.0),
      ],
    );
  }
}
