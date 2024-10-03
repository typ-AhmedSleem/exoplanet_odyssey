
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LevelCard extends StatelessWidget {
  const LevelCard({
    super.key, required this.levelnum, required this.levelnumquit,
  });
 final String levelnum;
  final String levelnumquit;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context,levelnumquit);
      },
      child: Card(
        color: Colors.grey[900],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: SizedBox(
          height: 180,
          width: 180,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                const FaIcon(
                  FontAwesomeIcons.trophy,
                  size: 60,
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                Text(
                  levelnum,
                  style: const TextStyle(fontSize: 26, color: Colors.white,
                  fontWeight: FontWeight.bold
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
