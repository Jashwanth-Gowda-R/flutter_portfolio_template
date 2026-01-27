import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black, size: 35),
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            // Custom header with desired height
            Container(
              height: 250, // Custom height
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.tealAccent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50, // Larger avatar
                    backgroundColor: Colors.tealAccent,
                    child: CircleAvatar(
                      radius: 48,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('picture.jpeg'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Sansbold(text: 'Jashwanth Gowda R', size: 20),
                  ),
                  const SizedBox(height: 5),
                  ListTile(
                    leading: const Icon(Icons.email),
                    title: Sans(text: 'webdevjash6@gmail.com', size: 16),
                  ),
                ],
              ),
            ),

            // Drawer items (menu options)
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  // Home
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: Sansbold(text: 'Home', size: 18),
                    onTap: () {
                      // Handle navigation to home
                      Navigator.pop(context);
                    },
                  ),
                  //work
                  ListTile(
                    leading: const Icon(Icons.work),
                    title: Sansbold(text: 'Work', size: 18),
                    onTap: () {
                      // Handle navigation to work
                      Navigator.pop(context);
                    },
                  ),
                  //blog
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: Sansbold(text: 'Blog', size: 18),
                    onTap: () {
                      // Handle navigation to blog
                      Navigator.pop(context);
                    },
                  ),

                  // About
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: Sansbold(text: 'About', size: 18),
                    onTap: () {
                      // Handle navigation to about
                      Navigator.pop(context);
                    },
                  ),

                  // Contact
                  ListTile(
                    leading: const Icon(Icons.contact_mail),
                    title: Sansbold(text: 'Contact', size: 18),
                    onTap: () {
                      // Handle navigation to contact
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),

            // Footer with social media and contact info
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // Social media icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset('assets/github.svg', height: 30),
                      // Add more social media icons here
                      SvgPicture.asset('assets/instagram.svg', height: 30),
                      SvgPicture.asset('assets/twitter.svg', height: 30),
                    ],
                  ),

                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
