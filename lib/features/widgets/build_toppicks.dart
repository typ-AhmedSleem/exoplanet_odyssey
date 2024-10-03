import 'package:flutter/material.dart';

class buildTopPicksSection extends StatelessWidget {
  const buildTopPicksSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top picks',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Let\'s explore our programs',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        Icon(
          Icons.notifications,
          color: Colors.white,
        ),
      ],
    );
  }
}
