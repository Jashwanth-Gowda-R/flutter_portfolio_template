// mobile/contact_me_mobile.dart
import 'package:flutter/material.dart';
import 'package:my_portfolio_app/widgets/darwer_mobile_view.dart';
import 'package:my_portfolio_app/widgets/my_textfield.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';

class ContactMeMobile extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController messageController;
  final GlobalKey<FormState> formKey;
  final VoidCallback onSubmit;
  final VoidCallback onReset;
  final double heightDevice;

  const ContactMeMobile({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
    required this.emailController,
    required this.phoneController,
    required this.messageController,
    required this.formKey,
    required this.onSubmit,
    required this.onReset,
    required this.heightDevice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   iconTheme: IconThemeData(color: Colors.black, size: 35),
      // ),
      endDrawer: DrawerMobileView(),
      // backgroundColor: Colors.black,
      body: NestedScrollView(
        headerSliverBuilder: (context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: heightDevice * 0.35,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/contact_image.jpg',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                // title: Sansbold(text: 'Contact Me', size: 25),
              ),
              floating: true,
              pinned: true,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black, size: 35),
            ),
          ];
        },
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20.0),
                Sansbold(text: 'Contact Me', size: 32),
                const SizedBox(height: 30.0),

                // First Name
                MyTextField(
                  text: 'First Name',
                  controller: firstNameController,
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
                  controller: lastNameController,
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
                  controller: emailController,
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
                  controller: phoneController,
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
                  controller: messageController,
                  minLines: 5,
                  // maxLines: 7,
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
                const SizedBox(height: 30.0),

                // Submit Button (Full Width on Mobile)
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: onSubmit,
                    child: Sansbold(text: 'Send Message', size: 18),
                  ),
                ),
                const SizedBox(height: 15.0),

                // Clear Button (Full Width on Mobile)
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.tealAccent),
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: onReset,
                    child: Sansbold(
                      text: 'Clear Form',
                      size: 16,
                      // color: Colors.tealAccent
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),

                // Contact Info
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.tealAccent, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Sansbold(
                        text: 'Contact Information',
                        size: 20,
                        // color: Colors.tealAccent
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const Icon(
                            Icons.email,
                            color: Colors.tealAccent,
                            size: 20,
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: Sansbold(
                              text: 'webdevjash6@gmail.com',
                              size: 16,
                              // color: Colors.white
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(
                            Icons.phone,
                            color: Colors.tealAccent,
                            size: 20,
                          ),
                          const SizedBox(width: 10),
                          Sansbold(
                            text: '+91 9986621042',
                            size: 16,
                            // color: Colors.white
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.tealAccent,
                            size: 20,
                          ),
                          const SizedBox(width: 10),
                          Sansbold(
                            text: 'Bangalore, India',
                            size: 16,
                            // color: Colors.white
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),

                      // Social Media Icons (Mobile-specific)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.code,
                              color: Colors.tealAccent,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.camera_alt,
                              color: Colors.tealAccent,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.chat,
                              color: Colors.tealAccent,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.link,
                              color: Colors.tealAccent,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
