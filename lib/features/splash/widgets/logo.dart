import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

 @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/splash/logo.png',
        width: 200,
        height: 200,
      ),
    );
  }
}
