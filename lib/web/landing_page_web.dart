import 'package:flutter/material.dart';
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
              children: [
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
