import 'package:exoplanet_odyssey/config/routes/app_routes.dart';
import 'package:exoplanet_odyssey/features/widgets/appbar.dart';
import 'package:exoplanet_odyssey/features/widgets/build_search_Field.dart';
import 'package:exoplanet_odyssey/features/widgets/build_toppicks.dart';
import 'package:exoplanet_odyssey/features/widgets/content_card.dart';
import 'package:exoplanet_odyssey/features/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppbarScreen(
          text1: 'Welcome Onboard',
          text2: 'Space Voyager!',
          imagebackgrond:
              'assets/images/StockCake-Celestial Cosmic Voyage_1727724580.jpg',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const buildSearchField(),
            const SizedBox(height: 20),
            const buildTopPicksSection(),
            const SizedBox(height: 10),
            buildContentCard(
              imagePath:
                  'assets/images/StockCake-Cosmic Marvels Unveiled_1727725283.jpg',
              type: 'Explore',
              title: 'Planets',
              newWidget: () {
                Navigator.pushNamed(context, AppRoutesName.ExplorePlanets);
              },
            ),
            buildContentCard(
              imagePath:
                  'assets/images/StockCake-Astronaut Views Galaxy_172772507233333333333.jpg',
              type: '3D',
              title: 'Visualize',
              newWidget: () {
                Navigator.pushNamed(context, AppRoutesName.ModelVisualize);
              },
            ),
            buildContentCard(
              imagePath: 'assets/images/nasa-Q1p7bh3SHj8-unsplash.jpg',
              type: 'Challenge',
              title: 'Yourself in Trivia',
              newWidget: () {
                Navigator.pushNamed(context, AppRoutesName.login);
              },
            ),
            buildContentCard(
              imagePath:
                  'assets/images/762da7ba-be15-431c-8c29-162ddffc1793.jpeg',
              type: 'Educational',
              title: 'Resources',
              newWidget: () {
                Navigator.pushNamed(context, AppRoutesName.Educational);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: NaviBar(currentIndex: 0),
    );
  }
}
