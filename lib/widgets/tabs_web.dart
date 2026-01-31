import 'package:flutter/material.dart';

class TabsWeb extends StatefulWidget {
  final String title;
  final String route;
  final Color color; // Required text color
  final Color hoverColor; // Optional hover color
  final Color selectedColor; // Optional selected color

  const TabsWeb({
    super.key,
    required this.title,
    required this.route,
    required this.color,
    this.hoverColor = Colors.tealAccent,
    this.selectedColor = Colors.teal,
  });

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isHovered = false;
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    // Check if current route matches this tab
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final currentRoute = ModalRoute.of(context)?.settings.name;
      if (currentRoute == widget.route) {
        setState(() {
          isSelected = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, widget.route);
      },
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            style: isSelected
                ? TextStyle(
                    color: widget.selectedColor,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    decorationColor: widget.selectedColor,
                  )
                : isHovered
                ? TextStyle(
                    color: widget.hoverColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  )
                : TextStyle(
                    color: widget.color,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
            child: Text(widget.title, textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}
