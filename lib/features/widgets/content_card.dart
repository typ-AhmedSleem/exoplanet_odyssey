import 'package:flutter/material.dart';

class buildContentCard extends StatelessWidget {
  const buildContentCard({
    super.key,
    required this.imagePath,
    required this.type,
    required this.title,
    required this.newWidget,
  });
  final String imagePath;
  final String type;
  final String title;
  final Function newWidget;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 180,
        child: GestureDetector(
          onTap: (){newWidget();},
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 60,
                left: 16,
                child: Text(
                  type,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                bottom: 25,
                left: 16,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                right: 14,
                bottom: 20,
                child:
                   Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 25,
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
