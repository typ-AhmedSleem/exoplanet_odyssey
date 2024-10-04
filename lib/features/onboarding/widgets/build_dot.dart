import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_height.dart';
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_width.dart';
import 'package:flutter/material.dart';

class BuildDot extends StatelessWidget {
  const BuildDot(int index, {super.key, required this.listIndex, required this.currentPage, required this.onTap});
  final int listIndex;
  final int currentPage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: listIndex != 2
            ? EdgeInsets.only(right: widgetWidth(context: context, width: 35))
            : const EdgeInsets.only(right: 0),
        child: currentPage == listIndex
            ? GestureDetector(
                onTap: onTap,
                child: CircleAvatar(
                  radius: widgetHeight(context: context, height: 40),
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: widgetHeight(context: context, height: 30),
                  ),
                ),
              )
            : Container(
                height: widgetHeight(context: context, height: 20),
                width: widgetHeight(context: context, height: 20),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.white,
                      width: widgetHeight(context: context, height: 3)),
                  shape: BoxShape.circle,
                ),
              ));
  }
}