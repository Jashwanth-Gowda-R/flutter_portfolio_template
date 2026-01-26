import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final String title;
  const TabsWeb({super.key, required this.title});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: AnimatedDefaultTextStyle(
        curve: Curves.fastOutSlowIn,
        style: isSelected
            ? GoogleFonts.oswald(
                color: Colors.transparent,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.tealAccent,
                shadows: [Shadow(color: Colors.black, offset: Offset(0, -6))],
              )
            : GoogleFonts.oswald(
                color: Colors.black,
                fontSize: 23,
                // fontWeight: FontWeight.bold,
                // letterSpacing: 1,
              ),
        duration: Duration(milliseconds: 100),
        child: Text(
          widget.title,
          // style: GoogleFonts.oswald(
          //   // color: isSelected ? Colors.redAccent : Colors.black,
          //   fontSize: 20,
          //   fontWeight: FontWeight.bold,
          //   letterSpacing: 1,
          // ),
        ),
      ),
      onEnter: (event) {
        setState(() {
          debugPrint(widget.title);
          isSelected = true;
        });
      },
      onExit: (e) {
        setState(() {
          isSelected = false;
          debugPrint('exit');
        });
      },
    );
  }
}
