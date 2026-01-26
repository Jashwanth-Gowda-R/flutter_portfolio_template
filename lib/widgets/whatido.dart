import 'package:flutter/material.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';

// class WhatIDO extends StatelessWidget {
//   final String text;
//   final String imagePath;
//   const WhatIDO({super.key, required this.text, required this.imagePath});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shadowColor: Colors.tealAccent,
//       elevation: 30,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Center(
//             child: Image.asset(
//               imagePath,
//               height: 200,
//               width: 200,
//               fit: BoxFit.contain,
//             ),
//           ),
//           SizedBox(height: 15),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Sansbold(text: text, size: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// A stateful widget for creating an animated card with an image and optional text
class AnimatedCard extends StatefulWidget {
  final String imagePath; // Path to the image to display on the card
  final String? text; // Optional text to display on the card
  final BoxFit? fit; // BoxFit for the image
  final bool? reverse; // Boolean to indicate if the animation should reverse (breathe opposite direction)
  final double? height; // Height of the image
  final double? width; // Width of the image

  const AnimatedCard({
    super.key,
    required this.imagePath,
    this.text,
    this.fit,
    this.reverse = false, // Default to normal breathing
    this.height,
    this.width,
  });

  @override
  _AnimatedCardState createState() => _AnimatedCardState();
}

// State class for AnimatedCard
class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2), // Breathing effect duration
  )..repeat(reverse: true);

  // For scale animation (front/back effect)
  late final Animation<double> _scaleAnimation = Tween<double>(
    begin: widget.reverse == true ? 1.05 : 0.95, // Start large if reverse, small if normal
    end: widget.reverse == true ? 0.95 : 1.05,   // End small if reverse, large if normal
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOut,
  ));

  // For elevation animation (shadow depth)
  late final Animation<double> _elevationAnimation = Tween<double>(
    begin: widget.reverse == true ? 30.0 : 10.0, // Start high if reverse, low if normal
    end: widget.reverse == true ? 10.0 : 30.0,   // End low if reverse, high if normal
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOut,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final currentScale = _scaleAnimation.value;
        final isLargerThanNormal = currentScale > 1.0;
        
        return Transform.scale(
          scale: currentScale,
          child: Card(
            elevation: _elevationAnimation.value,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              side: BorderSide(
                color: Colors.tealAccent,
                width: isLargerThanNormal ? 3.0 : 2.0,
              ),
            ),
            shadowColor: Colors.tealAccent,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    widget.imagePath,
                    height: widget.height ?? 200.0,
                    width: widget.width ?? 200.0,
                    fit: widget.fit,
                  ),
                  const SizedBox(height: 10.0),
                  if (widget.text != null)
                    Sansbold(
                      text: widget.text!,
                      size: 15,
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}