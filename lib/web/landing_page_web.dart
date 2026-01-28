// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_app/widgets/my_textfield.dart';

import 'package:my_portfolio_app/widgets/sansbold.dart';
import 'package:my_portfolio_app/widgets/skills.dart';
import 'package:my_portfolio_app/widgets/tabs_web.dart';
import 'package:my_portfolio_app/widgets/whatido.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController messageController;
  final GlobalKey<FormState>? formKey;

  const LandingPageWeb({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
    required this.emailController,
    required this.phoneController,
    required this.messageController,
    this.formKey,
  });

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  // // Text editing controllers for managing input fields in forms
  // final TextEditingController _firstNameController = TextEditingController();
  // final TextEditingController _lastNameController = TextEditingController();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _phoneController = TextEditingController();
  // final TextEditingController _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
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
            Sansbold(text: 'Jashwanth Gowda R', size: 30),
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
      ),
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
      body: ListView(
        children: [
          // 1st page
          SizedBox(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
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

                    // Sans(
                    //   text:
                    //       'Flutter Developer | Android Developer | Web Developer | iOS Developer ',
                    //   size: 30,
                    // ),
                    Sans(
                      text: 'Flutter Developer | Frontend Software Engineer',
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
                Image.asset('assets/web.jpg', height: widthDevice / 1.9),
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
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCard(
                      text: 'Web Development (Flutter)',
                      imagePath: 'assets/webL.png',

                      reverse: false,
                    ),
                    AnimatedCard(
                      text: 'Mobile App Development (Flutter)',
                      imagePath: 'assets/app.png',
                      reverse: true,
                    ),
                    AnimatedCard(
                      text: 'Backend Development(Firebase)',
                      imagePath: 'assets/firebase.png',
                      reverse: false,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // 4th section contact us
          SizedBox(
            height: heightDevice,
            child: Column(
              children: [
                const SizedBox(height: 30.0),
                Sansbold(text: 'Contact Me', size: 40),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyTextField(
                      text: 'First Name',
                      controller: widget.firstNameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'First name is required';
                        }
                        if (value.length < 2) {
                          return 'First name must be at least 2 characters';
                        }
                        if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                          return 'Only letters and spaces allowed';
                        }
                        return null;
                      },
                    ),
                    MyTextField(
                      text: 'Last Name',
                      controller: widget.lastNameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Last name is required';
                        }
                        if (value.length < 2) {
                          return 'Last name must be at least 2 characters';
                        }
                        if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                          return 'Only letters and spaces allowed';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyTextField(
                      text: 'Email',
                      controller: widget.emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        if (!RegExp(
                          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                        ).hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    MyTextField(
                      text: 'Phone Number',
                      controller: widget.phoneController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Phone number is required';
                        }
                        // Remove non-digits for validation
                        final digitsOnly = value.replaceAll(RegExp(r'\D'), '');
                        if (digitsOnly.length < 10) {
                          return 'Phone number must be at least 10 digits';
                        }
                        if (!RegExp(r'^[\d\s\-+()]{10,}$').hasMatch(value)) {
                          return 'Please enter a valid phone number';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                MyTextField(
                  text: 'Message',
                  controller: widget.messageController,
                  minLines: 6,
                  width: 950,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Message is required';
                    }
                    if (value.length < 10) {
                      return 'Message must be at least 10 characters';
                    }
                    if (value.length > 500) {
                      return 'Message must be less than 500 characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent,
                      minimumSize: const Size(200, 50),
                    ),
                    onPressed: () {
                      // You'll need to trigger validation here
                      // If using Form widget, call _formKey.currentState!.validate()
                    },
                    child: Sansbold(text: 'Submit', size: 20),
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
