import 'package:exoplanet_odyssey/features/widgets/appbar.dart';
import 'package:exoplanet_odyssey/features/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

import '../quizes_structure.dart';

class PlantesAq extends StatelessWidget {
  PlantesAq({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NaviBar(),
      backgroundColor: Colors.black,
    appBar: PreferredSize(
    preferredSize: const Size.fromHeight(150),
    child: AppbarScreen(text1: ' Questioners from', text2: 'Planets',imagebackgrond: 'assets/images/WhatsApp Image 2024-10-02 at 20.23.17_4c263e3f.jpg',)),
     body: const QuizesStructure()
    );
  }
}