
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_height.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewChild extends StatelessWidget {
  const PageViewChild({
    super.key, required this.title, required this.description,
    
  });
  final String title ;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(),
          Text(
            title,
            style: TextStyle(
              fontSize: 63.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: widgetHeight(context: context, height: 40),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 19.sp,
              color: Colors.white,
            ),
          ),
          const Spacer()
        ]);
  }
}
