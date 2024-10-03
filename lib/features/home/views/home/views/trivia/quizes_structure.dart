

 import 'package:exoplanet_odyssey/features/widgets/custom_button.dart';
import 'package:exoplanet_odyssey/features/widgets/information_card.dart';
import 'package:flutter/material.dart';



class QuizesStructure extends StatelessWidget {
   const QuizesStructure({super.key});

   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(20),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           const SizedBox(height: 40),
           const InformationCard(
             description:
             ' Test your planetary knowledge and \n challenge your intellect with our \n captivating quizzes.',
             title: '        Let’s Play! \n Play new and Level up', icon: Icons.emoji_events,
           ),
           const SizedBox(height: 40),
           CustemButton(text: 'Start Play Now',
           )
         ],
       ),
     );
   }
 }
