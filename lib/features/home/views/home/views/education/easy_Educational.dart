import 'package:exoplanet_odyssey/features/widgets/appbar.dart';
import 'package:exoplanet_odyssey/features/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/responsive_ui/widget_width.dart';
import '../../../../../widgets/educational_card.dart';
import '../../../../manger/models/vedioedu_model.dart';



class Educational extends StatelessWidget {
   Educational({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NaviBar(currentIndex: 2),
      backgroundColor: Colors.black,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: AppbarScreen(
              text1: 'Welcome', text2: 'Space Voyager!',imagebackgrond: 'assets/images/WhatsApp Image 2024-10-05 at 06.35.28_8b32a75d.jpg',)),
      body:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EducationalCard(

              ),
              Card(
                elevation: 20,
                color: Colors.grey[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: const EdgeInsets.symmetric(vertical: 6),
                child: SizedBox(
                  height: 250,
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        const Icon(
                          Icons.book,
                          color: Colors.white,
                          size: 80,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Lesson',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],

                    ),
                  ),
                ),
              ),
            ]
          ),
        ],
      )
    );
  }
}
