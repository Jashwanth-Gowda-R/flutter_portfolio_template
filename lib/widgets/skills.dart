import 'package:flutter/material.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';

class Skills extends StatelessWidget {
  final String text;
  const Skills({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          style: BorderStyle.solid,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.all(8),
      child: Sansbold(text: text, size: 15),
    );
  }
}
