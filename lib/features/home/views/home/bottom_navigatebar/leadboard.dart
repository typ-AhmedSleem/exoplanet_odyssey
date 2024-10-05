import 'package:exoplanet_odyssey/features/widgets/appbar.dart';
import 'package:exoplanet_odyssey/features/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class LeadboardScore extends StatelessWidget {
  const LeadboardScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NaviBar(currentIndex: 3),
      backgroundColor: Colors.black,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: AppbarScreen(
              text1: 'Trivia',
              text2: 'Leaderboard',
              imagebackgrond:
                  'assets/images/StockCake-Celestial Cosmic Voyage_1727724580.jpg')),
      body: const Center(
        child: Text(
          'This is the Leaderboard screen.',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
