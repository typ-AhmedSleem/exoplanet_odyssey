import 'package:exoplanet_odyssey/config/routes/app_routes.dart';
import 'package:exoplanet_odyssey/features/widgets/appbar.dart';
import 'package:exoplanet_odyssey/features/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';


import 'level_card.dart';


class ChooseLevel extends StatefulWidget {
  const ChooseLevel({super.key});

  @override
  State<ChooseLevel> createState() => _QuestionFormState();
}

class _QuestionFormState extends State<ChooseLevel> {
  String? _selectedAnswer; // تعريف المتغير هنا

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NaviBar(),
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppbarScreen(
          text1: 'SELECT A',
          text2: 'LEVEL ',
          imagebackgrond: 'assets/images/WhatsApp Image 2024-10-02 at 20.23.17_4c263e3f.jpg',
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LevelCard(levelnum: 'Level 1', levelnumquit: AppRoutesName.LevelOne),
                LevelCard(levelnum: 'Level 3', levelnumquit: AppRoutesName.LevelThree)
              ],
            ),
            SizedBox(width: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LevelCard(levelnum: 'Level 2', levelnumquit: AppRoutesName.LevelTow),
                LevelCard(levelnum: 'Level 4', levelnumquit: AppRoutesName.Levelfour)
              ],
            )

          ],
        ),
      ),

    );
  }
}
