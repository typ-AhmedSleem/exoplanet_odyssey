import 'package:exoplanet_odyssey/config/routes/app_routes.dart';
import 'package:exoplanet_odyssey/features/widgets/appbar.dart';
import 'package:exoplanet_odyssey/features/widgets/content_card.dart';
import 'package:exoplanet_odyssey/features/widgets/information_card.dart';
import 'package:exoplanet_odyssey/features/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class Trivia extends StatelessWidget {
  const Trivia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: AppbarScreen(
            text1: 'Challenge',
            text2: 'yourself in Trivia',
            imagebackgrond:
                'assets/images/StockCake-Celestial Cosmic Voyage_1727724580.jpg',
          )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const InformationCard(
              description:
                  ' Here, you have the power to ask, answer,and voice your \n thoughts on  a wide range of topics. Engage with our community and gain insights through collective wisdom.',
              title: 'What you get here?',
              icon: Icons.library_books_outlined,
            ),
            buildContentCard(
              imagePath:
                  'assets/images/52fb2594-0e52-4ee4-bbed-23947210561d.jpeg',
              type: ' Questioners from',
              title: 'Planets',
              newWidget: () {
                Navigator.pushNamed(context, AppRoutesName.PlantesAq);
              },
            ),
            buildContentCard(
              imagePath:
                  'assets/images/8acd08b2-08ff-47c8-930b-4010470706ec.jpeg',
              type: 'Questioners from',
              title: 'Galaxies',
              newWidget: () {
                Navigator.pushNamed(context, AppRoutesName.GalaxiesAq);
              },
            ),
            buildContentCard(
              imagePath:
                  'assets/images/8f9515da-1fd3-4628-b101-dace88f09aa3.jpeg',
              type: 'Questioners from',
              title: 'Stars',
              newWidget: () {
                Navigator.pushNamed(context, AppRoutesName.StarsAq);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: NaviBar(currentIndex: 1),
    );
  }
}
