import 'package:exoplanet_odyssey/features/home/views/home/views/education/video_edu.dart';
import 'package:flutter/material.dart';

class Vidio extends StatelessWidget {
Vidio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar:AppBar(),

      body: YoutubeVideoPlayer(),
    );
  }
}