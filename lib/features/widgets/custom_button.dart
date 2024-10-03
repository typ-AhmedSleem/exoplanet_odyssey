import 'package:exoplanet_odyssey/config/routes/app_routes.dart';
import 'package:flutter/material.dart';

class CustemButton extends StatelessWidget {
  CustemButton({super.key, required this.text});
   final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap:(){
          Navigator.pushNamed(context, AppRoutesName.ChooseLevel);

        },
        child:   Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          height: 65,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[ Text(
              text,
              style: const TextStyle(
                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
            ),
              const SizedBox(width: 20),

                const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                  size: 25,
                ),

            ]),
        ));
  }
}