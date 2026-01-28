import 'package:flutter/material.dart';
import 'package:my_portfolio_app/mobile/landing_page_mobile.dart';
import 'package:my_portfolio_app/web/landing_page_web.dart';

class LandingPageResponsive extends StatefulWidget {
  const LandingPageResponsive({super.key});

  @override
  State<LandingPageResponsive> createState() => _LandingPageResponsiveState();
}

class _LandingPageResponsiveState extends State<LandingPageResponsive> {
  // Declare controllers in parent state
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // Dispose controllers when parent is disposed
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          // Pass controllers to web version
          return LandingPageWeb(
            firstNameController: _firstNameController,
            lastNameController: _lastNameController,
            emailController: _emailController,
            phoneController: _phoneController,
            messageController: _messageController,
            formKey: _formKey,
          );
        } else {
          // Pass same controllers to mobile version
          return LandingPageMobile(
            firstNameController: _firstNameController,
            lastNameController: _lastNameController,
            emailController: _emailController,
            phoneController: _phoneController,
            messageController: _messageController,
            formKey: _formKey,
          );
        }
      },
    );
  }
}
