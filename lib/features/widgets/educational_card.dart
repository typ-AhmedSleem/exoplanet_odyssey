

import 'package:exoplanet_odyssey/config/routes/app_routes.dart';
import 'package:flutter/material.dart';

class EducationalCard extends StatelessWidget {
   EducationalCard({super.key,});
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, AppRoutesName.YoutubeVideoPlayer);
        },
        child: Card(
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
                    Icons.video_camera_back_rounded,
                    color: Colors.white,
                    size: 80,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Video',
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
      );

  }
}
