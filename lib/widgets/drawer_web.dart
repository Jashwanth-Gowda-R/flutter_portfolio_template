import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerWeb extends StatelessWidget {
  const DrawerWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 72,
            backgroundColor: Colors.tealAccent,
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('picture.jpeg'),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Sansbold(text: 'Jashwanth Gowda R', size: 25),
          ),
          SizedBox(height: 20),
          // social media icons svg files for insta github twitter
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // svg images
              GestureDetector(
                child: SvgPicture.asset('assets/github.svg', height: 30),
                onTap: () async {
                  await launchUrl(
                    Uri.parse('https://github.com/Jashwanth-Gowda-R'),
                  );
                },
              ),
              SizedBox(width: 20),
              SvgPicture.asset('assets/instagram.svg', height: 30),
              SizedBox(width: 20),
              SvgPicture.asset('assets/twitter.svg', height: 30),
            ],
          ),
        ],
      ),
    );
  }
}
