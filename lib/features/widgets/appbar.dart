import 'package:flutter/material.dart';

class AppbarScreen extends StatelessWidget {
  AppbarScreen({super.key, required this.text1, required this.text2, required this.imagebackgrond});
  final String text1;
  final String text2;
  final String imagebackgrond;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 250,

          child: Image.asset(
            imagebackgrond,
            fit: BoxFit.cover,

          ),
        ),
        Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(

            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.9),
                Colors.black,
              ],
              stops: [0.0, 0.9, 1.0],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Text(
                        text1,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        text2,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
