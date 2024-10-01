import 'package:exoplanet_odyssey/core/utils/constants/colors.dart';
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_height.dart';
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(widgetWidth(context: context, width: 20)),
        ),
        backgroundColor: kPrimaryColor,
        minimumSize:
            Size(double.infinity, widgetHeight(context: context, height: 75)),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                color: kSecondaryColor,
                fontSize: 21.sp,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: widgetWidth(context: context, width: 10),
          ),
          Icon(
            Icons.arrow_forward,
            color: kSecondaryColor,
            size: 21.sp,
          )
        ],
      ),
    );
  }
}
