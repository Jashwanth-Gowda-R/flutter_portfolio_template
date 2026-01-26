import 'package:flutter/material.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';

class WhatIDO extends StatelessWidget {
  final String text;
  final String imagePath;
  const WhatIDO({super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.tealAccent,
      elevation: 30,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              imagePath,
              height: 200,
              width: 200,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Sansbold(text: text, size: 20),
          ),
        ],
      ),
    );
  }
}
