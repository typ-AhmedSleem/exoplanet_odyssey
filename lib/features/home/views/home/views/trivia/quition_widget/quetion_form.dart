
import 'package:exoplanet_odyssey/features/home/manger/models/quition_map.dart';
import 'package:exoplanet_odyssey/features/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'AnswerOption.dart';
import 'ResultScreen.dart';

class QuestionForm extends StatefulWidget {
   QuestionForm({super.key, required this.questions,   });
   final List<Question> questions;
  @override
  State<QuestionForm> createState() => _QuestionFormState();
}

class _QuestionFormState extends State<QuestionForm> {
  int _currentQuestionIndex = 0;
  String? _selectedAnswer;
  bool _isAnswered = false;
  int _score = 0;
  String? _correctAnswer;



  final List<String?> _selectedAnswers = List<String?>.filled(3, null);
  final List<bool> _isQuestionAnswered = List<bool>.filled(3, false);

  void _checkAnswer() {
    _correctAnswer =widget.questions[_currentQuestionIndex].correct;
    if (_selectedAnswer == _correctAnswer) {
      _score++;
    }
    setState(() {
      _isAnswered = true;
      _isQuestionAnswered[_currentQuestionIndex] = true;
      _selectedAnswers[_currentQuestionIndex] = _selectedAnswer;
    });
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < widget.questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
        _selectedAnswer = _selectedAnswers[_currentQuestionIndex];
        _isAnswered = _isQuestionAnswered[_currentQuestionIndex];
      });
    } else {
      Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => ResultScreen(score: _score),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        ),
      );
    }
  }

  void _previousQuestion() {
    if (_currentQuestionIndex > 0) {
      setState(() {
        _currentQuestionIndex--;
        _selectedAnswer = _selectedAnswers[_currentQuestionIndex];
        _isAnswered = _isQuestionAnswered[_currentQuestionIndex];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> answers = widget.questions[_currentQuestionIndex].answers;
    String question = widget.questions[_currentQuestionIndex].question;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: AppbarScreen(text1: 'Let’s answer', text2: 'Q&A Polls', imagebackgrond: 'assets/images/StockCake-Celestial Cosmic Voyage_1727724580.jpg')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            Text(
              'Question ${_currentQuestionIndex + 1} :-',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              question,
              style: const TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 30),
            for (int i = 0; i < answers.length; i++)
              AnswerOption(
                text: '${i + 1}. ${answers[i]}',
                value: answers[i],
                isAnswered: _isAnswered,
                correctAnswer: _correctAnswer,
                selectedAnswer: _selectedAnswer,
                onTap: () {
                  if (!_isAnswered && !_isQuestionAnswered[_currentQuestionIndex]) {
                    setState(() {
                      _selectedAnswer = answers[i];
                    });
                  }
                },
              ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _previousQuestion,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Back',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: _isAnswered ? _nextQuestion : _checkAnswer,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    _isAnswered ? 'Next' : 'Check',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Score: $_score',
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
