
import 'package:flutter/material.dart';

class AnswerOption extends StatelessWidget {
  final String text;
  final String value;
  final bool isAnswered;
  final String? correctAnswer;
  final String? selectedAnswer;
  final VoidCallback onTap;

  const AnswerOption({
    Key? key,
    required this.text,
    required this.value,
    required this.isAnswered,
    required this.correctAnswer,
    required this.selectedAnswer,
    required this.onTap,
  }) : super(key: key);

  Color optionColor() {
    if (!isAnswered) {
      return Colors.black;
    } else if (value == correctAnswer) {
      return Colors.green;
    } else if (value == selectedAnswer && selectedAnswer != correctAnswer) {
      return Colors.red;
    } else {
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isAnswered ? null : onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: optionColor(),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Radio(
              value: value,
              groupValue: selectedAnswer,
              onChanged: isAnswered ? null : (val) {},
              activeColor: Colors.white,
              fillColor: MaterialStateProperty.all(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
