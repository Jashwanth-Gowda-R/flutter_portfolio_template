import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';

class MyTextField extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  int? minLines;
  double? width;
  String? Function(String?)? validator;
  MyTextField({
    super.key,
    required this.text,
    required this.controller,
    this.minLines = 1,
    this.width = 350,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Sansbold(text: text, size: 20),
            SizedBox(height: 5),
            SizedBox(
              width: width ?? 350,
              child: TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[a-zA-Z0-9 .,!?@#$%&*()+=_-]'),
                  ),
                ],
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: validator,
                controller: controller,
                maxLines: minLines,
                decoration: InputDecoration(
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: 'Enter Your $text',
                  helperStyle: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  // labelText: text,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
