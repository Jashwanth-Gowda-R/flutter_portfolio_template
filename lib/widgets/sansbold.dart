import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sansbold extends StatelessWidget {
  final String text;
  final double size;
  const Sansbold({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        color: Colors.black,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class Sans extends StatelessWidget {
  final String text;
  final double size;
  const Sans({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        color: Colors.black,
        fontSize: size,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
