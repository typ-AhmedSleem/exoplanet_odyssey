
import 'package:exoplanet_odyssey/features/home/manger/models/quition_map.dart';
import 'package:flutter/material.dart';

import '../quition_widget/quetion_form.dart';

class LevelOne extends StatelessWidget {
  const LevelOne({super.key});

  @override
  Widget build(BuildContext context) {
    return QuestionForm(
    questions: [
      Question(
        question: 'What is the biggest planet in our solar system?',
        answers: ['Mars', 'Jupiter', 'Saturn', 'Venus'],
        correct: 'Jupiter',
      ),
      Question(
        question: 'Which planet is closest to the Sun?',
        answers: ['Earth', 'Venus', 'Mercury', 'Mars'],
        correct: 'Mercury',
      ),
      Question(
        question: 'What planet is known as the Red Planet?',
        answers: ['Mars', 'Saturn', 'Venus', 'Earth'],
        correct: 'Mars',
      ),
    ],

    );
  }
}
