import 'package:exoplanet_odyssey/features/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
   Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NaviBar(),
      backgroundColor: Colors.black,
      appBar:AppBar(),
    );
  }
}