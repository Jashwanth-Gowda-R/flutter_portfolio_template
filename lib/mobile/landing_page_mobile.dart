import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_app/widgets/darwer_mobile_view.dart';
import 'package:my_portfolio_app/widgets/my_textfield.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';
import 'package:my_portfolio_app/widgets/skills.dart';
import 'package:my_portfolio_app/widgets/whatido.dart';

class LandingPageMobile extends StatefulWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController messageController;
  final GlobalKey<FormState>? formKey;

  const LandingPageMobile({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
    required this.emailController,
    required this.phoneController,
    required this.messageController,
    this.formKey,
  });

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  // // Text editing controllers for managing input fields in forms
  // final TextEditingController _firstNameController = TextEditingController();
  // final TextEditingController _lastNameController = TextEditingController();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _phoneController = TextEditingController();
  // final TextEditingController _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
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
        body: ListView(
          children: [
            // Intro 1st section
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            // bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Sansbold(text: 'Hello I\'m ', size: 15),
                      ),
                      SizedBox(height: 10),
                      Sansbold(text: 'Jashwanth Gowda R', size: 20),
                      Sans(
                        text: 'Flutter Developer | Frontend Software Engineer',
                        size: 15,
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                        spacing: 3,
                        direction: Axis.vertical,
                        children: [
                          Icon(Icons.email, color: Colors.tealAccent),
                          Icon(Icons.pin_drop_outlined, color: Colors.tealAccent),
                        ],
                      ),
                      SizedBox(width: 20),
                      Wrap(
                        spacing: 10,
                        direction: Axis.vertical,
                        children: [
                          Sans(text: 'webdevjash6@gmail.com', size: 15),
                          Sans(text: 'Bangalore, Karnataka', size: 15),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 90),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      AnimatedCard(
                        text: 'Web Development (Flutter)',
                        imagePath: 'assets/webL.png',
      
                        reverse: false,
                      ),
                      SizedBox(height: 15),
                      AnimatedCard(
                        text: 'Mobile App Development (Flutter)',
                        imagePath: 'assets/app.png',
                        reverse: true,
                      ),
                      SizedBox(height: 15),
                      AnimatedCard(
                        text: 'Backend Development(Firebase)',
                        imagePath: 'assets/firebase.png',
                        reverse: false,
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 90),
            // contact us
            // 4th section contact us
            SizedBox(
              // height: heightDevice,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    const SizedBox(height: 30.0),
                    Sansbold(text: 'Contact Me', size: 40),
                    const SizedBox(height: 20.0),
      
                    // First Name
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
                    const SizedBox(height: 20.0),
      
                    // Last Name
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
                    const SizedBox(height: 20.0),
      
                    // Email
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
                    const SizedBox(height: 20.0),
      
                    // Phone Number
                    MyTextField(
                      text: 'Phone Number',
                      controller: widget.phoneController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Phone number is required';
                        }
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
                    const SizedBox(height: 20.0),
      
                    // Message
                    MyTextField(
                      text: 'Message',
                      controller: widget.messageController,
                      minLines: 6,
                      // Remove width for mobile, it will take full width
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
      
                    // Submit Button
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.tealAccent,
                          minimumSize: const Size(200, 50),
                        ),
                        onPressed: () {
                          // Form validation logic
                        },
                        child: Sansbold(text: 'Submit', size: 20),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
