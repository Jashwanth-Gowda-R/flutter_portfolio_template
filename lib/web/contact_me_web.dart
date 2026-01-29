// web/contact_me_web.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_app/widgets/my_textfield.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';
import 'package:my_portfolio_app/widgets/tabs_web.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMeWeb extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController messageController;
  final GlobalKey<FormState> formKey;
  final VoidCallback onSubmit;
  final VoidCallback onReset;
  final double heightDevice;

  const ContactMeWeb({
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
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.black,
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
      ),
      // appBar: AppBar(
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Spacer(flex: 3),
      //       TabsWeb(title: 'Home', route: '/'),
      //       Spacer(),
      //       TabsWeb(title: 'Works', route: '/works'),
      //       Spacer(),
      //       TabsWeb(title: 'Blogs', route: '/blog'),
      //       Spacer(),
      //       TabsWeb(title: 'About', route: '/about'),
      //       Spacer(),
      //       TabsWeb(title: 'Contact', route: '/contact'),
      //       Spacer(),
      //     ],
      //   ),
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      // ),
      // body: SingleChildScrollView(
      //   child: SizedBox(
      //     // height: heightDevice,
      //     child: Padding(
      //       padding: const EdgeInsets.symmetric(
      //         horizontal: 340.0,
      //         vertical: 30.0,
      //       ),
      //       child: Form(
      //         key: formKey,
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             const SizedBox(height: 30.0),
      //             Sansbold(text: 'Contact Me', size: 40),
      //             const SizedBox(height: 30.0),

      //             // First Name + Last Name Row
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Expanded(
      //                   child: MyTextField(
      //                     text: 'First Name',
      //                     controller: firstNameController,
      //                     validator: (value) {
      //                       if (value == null || value.isEmpty) {
      //                         return 'First name is required';
      //                       }
      //                       if (value.length < 2) {
      //                         return 'First name must be at least 2 characters';
      //                       }
      //                       if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
      //                         return 'Only letters and spaces allowed';
      //                       }
      //                       return null;
      //                     },
      //                   ),
      //                 ),
      //                 const SizedBox(width: 40.0),
      //                 Expanded(
      //                   child: MyTextField(
      //                     text: 'Last Name',
      //                     controller: lastNameController,
      //                     validator: (value) {
      //                       if (value == null || value.isEmpty) {
      //                         return 'Last name is required';
      //                       }
      //                       if (value.length < 2) {
      //                         return 'Last name must be at least 2 characters';
      //                       }
      //                       if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
      //                         return 'Only letters and spaces allowed';
      //                       }
      //                       return null;
      //                     },
      //                   ),
      //                 ),
      //               ],
      //             ),

      //             const SizedBox(height: 30.0),

      //             // Email + Phone Row
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Expanded(
      //                   child: MyTextField(
      //                     text: 'Email',
      //                     controller: emailController,
      //                     validator: (value) {
      //                       if (value == null || value.isEmpty) {
      //                         return 'Email is required';
      //                       }
      //                       if (!RegExp(
      //                         r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
      //                       ).hasMatch(value)) {
      //                         return 'Please enter a valid email address';
      //                       }
      //                       return null;
      //                     },
      //                   ),
      //                 ),
      //                 const SizedBox(width: 40.0),
      //                 Expanded(
      //                   child: MyTextField(
      //                     text: 'Phone Number',
      //                     controller: phoneController,
      //                     validator: (value) {
      //                       if (value == null || value.isEmpty) {
      //                         return 'Phone number is required';
      //                       }
      //                       final digitsOnly = value.replaceAll(
      //                         RegExp(r'\D'),
      //                         '',
      //                       );
      //                       if (digitsOnly.length < 10) {
      //                         return 'Phone number must be at least 10 digits';
      //                       }
      //                       if (!RegExp(
      //                         r'^[\d\s\-+()]{10,}$',
      //                       ).hasMatch(value)) {
      //                         return 'Please enter a valid phone number';
      //                       }
      //                       return null;
      //                     },
      //                   ),
      //                 ),
      //               ],
      //             ),

      //             const SizedBox(height: 30.0),

      //             // Message (Full Width)
      //             MyTextField(
      //               width: widthDevice * 0.73,
      //               text: 'Message',
      //               controller: messageController,
      //               minLines: 6,
      //               // maxLines: 8,
      //               validator: (value) {
      //                 if (value == null || value.isEmpty) {
      //                   return 'Message is required';
      //                 }
      //                 if (value.length < 10) {
      //                   return 'Message must be at least 10 characters';
      //                 }
      //                 if (value.length > 500) {
      //                   return 'Message must be less than 500 characters';
      //                 }
      //                 return null;
      //               },
      //             ),

      //             const SizedBox(height: 40.0),

      //             // Buttons Row
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 ElevatedButton(
      //                   style: ElevatedButton.styleFrom(
      //                     backgroundColor: Colors.tealAccent,
      //                     minimumSize: const Size(200, 50),
      //                     shape: RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(10),
      //                     ),
      //                   ),
      //                   onPressed: onSubmit,
      //                   child: Sansbold(text: 'Send Message', size: 20),
      //                 ),
      //                 const SizedBox(width: 30.0),
      //                 OutlinedButton(
      //                   style: OutlinedButton.styleFrom(
      //                     side: const BorderSide(color: Colors.tealAccent),
      //                     minimumSize: const Size(150, 50),
      //                     shape: RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(10),
      //                     ),
      //                   ),
      //                   onPressed: onReset,
      //                   child: Sansbold(
      //                     text: 'Clear Form',
      //                     size: 18,
      //                     // color: Colors.tealAccent
      //                   ),
      //                 ),
      //               ],
      //             ),

      //             const SizedBox(height: 40.0),

      //             // Contact Info
      //             Container(
      //               padding: const EdgeInsets.all(20.0),
      //               decoration: BoxDecoration(
      //                 border: Border.all(color: Colors.tealAccent, width: 2),
      //                 borderRadius: BorderRadius.circular(15),
      //               ),
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Sansbold(
      //                     text: 'Contact Information',
      //                     size: 24,
      //                     // color: Colors.tealAccent
      //                   ),
      //                   const SizedBox(height: 15),
      //                   Row(
      //                     children: [
      //                       const Icon(Icons.email, color: Colors.tealAccent),
      //                       const SizedBox(width: 15),
      //                       Sansbold(
      //                         text: 'webdevjash6@gmail.com',
      //                         size: 18,
      //                         // color: Colors.white
      //                       ),
      //                     ],
      //                   ),
      //                   const SizedBox(height: 10),
      //                   Row(
      //                     children: [
      //                       const Icon(Icons.phone, color: Colors.tealAccent),
      //                       const SizedBox(width: 15),
      //                       Sansbold(
      //                         text: '+91 9986621042',
      //                         size: 18,
      //                         // color: Colors.white
      //                       ),
      //                     ],
      //                   ),
      //                   const SizedBox(height: 10),
      //                   Row(
      //                     children: [
      //                       const Icon(
      //                         Icons.location_on,
      //                         color: Colors.tealAccent,
      //                       ),
      //                       const SizedBox(width: 15),
      //                       Sansbold(
      //                         text: 'Bangalore, India',
      //                         size: 18,
      //                         // color: Colors.white
      //                       ),
      //                     ],
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      body: NestedScrollView(
        headerSliverBuilder: (context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black, size: 25),
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/contact_image.jpg',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                // title: Sansbold(text: 'Contact Me', size: 25),
              ),
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
            ),
          ];
        },
        // body: Container(),
        body: SingleChildScrollView(
          child: SizedBox(
            // height: heightDevice,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 340.0,
                vertical: 30.0,
              ),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30.0),
                    Sansbold(text: 'Contact Me', size: 40),
                    const SizedBox(height: 30.0),

                    // First Name + Last Name Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: MyTextField(
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
                        ),
                        const SizedBox(width: 40.0),
                        Expanded(
                          child: MyTextField(
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
                        ),
                      ],
                    ),

                    const SizedBox(height: 30.0),

                    // Email + Phone Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: MyTextField(
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
                        ),
                        const SizedBox(width: 40.0),
                        Expanded(
                          child: MyTextField(
                            text: 'Phone Number',
                            controller: phoneController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Phone number is required';
                              }
                              final digitsOnly = value.replaceAll(
                                RegExp(r'\D'),
                                '',
                              );
                              if (digitsOnly.length < 10) {
                                return 'Phone number must be at least 10 digits';
                              }
                              if (!RegExp(
                                r'^[\d\s\-+()]{10,}$',
                              ).hasMatch(value)) {
                                return 'Please enter a valid phone number';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30.0),

                    // Message (Full Width)
                    MyTextField(
                      width: widthDevice * 0.73,
                      text: 'Message',
                      controller: messageController,
                      minLines: 6,
                      // maxLines: 8,
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

                    const SizedBox(height: 40.0),

                    // Buttons Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.tealAccent,
                            minimumSize: const Size(200, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: onSubmit,
                          child: Sansbold(text: 'Send Message', size: 20),
                        ),
                        const SizedBox(width: 30.0),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.tealAccent),
                            minimumSize: const Size(150, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: onReset,
                          child: Sansbold(
                            text: 'Clear Form',
                            size: 18,
                            // color: Colors.tealAccent
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 40.0),

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
                            size: 24,
                            // color: Colors.tealAccent
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const Icon(Icons.email, color: Colors.tealAccent),
                              const SizedBox(width: 15),
                              Sansbold(
                                text: 'webdevjash6@gmail.com',
                                size: 18,
                                // color: Colors.white
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(Icons.phone, color: Colors.tealAccent),
                              const SizedBox(width: 15),
                              Sansbold(
                                text: '+91 9986621042',
                                size: 18,
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
                              ),
                              const SizedBox(width: 15),
                              Sansbold(
                                text: 'Bangalore, India',
                                size: 18,
                                // color: Colors.white
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
