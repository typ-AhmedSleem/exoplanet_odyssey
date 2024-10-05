import 'package:flutter/material.dart';
import 'dart:ui'; // Needed for the blur effect

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    required this.backgroundImage,
    required this.child,
    this.blurIntensity = 7.5,
  });

  final String backgroundImage;
  final Widget child;
  final double blurIntensity;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backgroundImage),
              fit: BoxFit.cover,
              opacity: 0.8,
            ),
          ),
        ),
        // Blur effect
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: blurIntensity,
                sigmaY: blurIntensity), // Adjust blur intensity
            child: Container(
              color: Colors.black.withOpacity(
                  0), // Transparent container to preserve blur effect
            ),
          ),
        ),
        // Child widget (content on top of the blurred background)
        child,
      ],
    );
  }
}
