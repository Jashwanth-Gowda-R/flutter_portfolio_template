// contact_page_responsive.dart
import 'package:flutter/material.dart';
import 'package:my_portfolio_app/mobile/contact_me_mobile.dart';
import 'package:my_portfolio_app/web/contact_me_web.dart';

class ContactPageResponsive extends StatefulWidget {
  const ContactPageResponsive({super.key});

  @override
  State<ContactPageResponsive> createState() => _ContactPageResponsiveState();
}

class _ContactPageResponsiveState extends State<ContactPageResponsive> {
  // Create controllers in parent state
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // Dispose all controllers
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, process submission
      final formData = {
        'firstName': _firstNameController.text,
        'lastName': _lastNameController.text,
        'email': _emailController.text,
        'phone': _phoneController.text,
        'message': _messageController.text,
      };
      print('Form submitted: $formData');

      // Show success message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Message sent successfully!'),
          backgroundColor: Colors.green,
        ),
      );

      // Clear form after submission
      _formKey.currentState?.reset();
    }
  }

  void _resetForm() {
    _formKey.currentState?.reset();
    _firstNameController.clear();
    _lastNameController.clear();
    _emailController.clear();
    _phoneController.clear();
    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1050) {
          return ContactMeWeb(
            firstNameController: _firstNameController,
            lastNameController: _lastNameController,
            emailController: _emailController,
            phoneController: _phoneController,
            messageController: _messageController,
            formKey: _formKey,
            onSubmit: _submitForm,
            onReset: _resetForm,
            heightDevice: heightDevice,
          );
        } else {
          return ContactMeMobile(
            heightDevice: heightDevice,
            firstNameController: _firstNameController,
            lastNameController: _lastNameController,
            emailController: _emailController,
            phoneController: _phoneController,
            messageController: _messageController,
            formKey: _formKey,
            onSubmit: _submitForm,
            onReset: _resetForm,
          );
        }
      },
    );
  }
}
