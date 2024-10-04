import 'package:exoplanet_odyssey/features/widgets/appbar.dart';
import 'package:exoplanet_odyssey/features/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';



class Educational extends StatelessWidget {
  const Educational({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NaviBar(currentIndex: 0),
      backgroundColor: Colors.black,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: AppbarScreen(
              text1: 'Welcome Onboard', text2: 'Space Voyager!',imagebackgrond: 'assets/images/StockCake-Celestial Cosmic Voyage_1727724580.jpg',)),);
  }
}
