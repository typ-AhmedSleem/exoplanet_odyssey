
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_height.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key, required this.firstLine, required this.secondLine,
  });
  final String firstLine;
  final String secondLine ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widgetHeight(context: context, height: 103),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            firstLine,
            style: TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.w500,
              height: 0.9,
            ),
          ),
          Text(
            secondLine,
            style: TextStyle(
                fontSize: 63.sp,
                fontWeight: FontWeight.w600,
                height: 0.9),
          ),
        ],
      ),
    );
  }
}
