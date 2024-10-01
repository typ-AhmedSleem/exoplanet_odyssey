import 'package:flutter/material.dart';

double widgetHeight({required BuildContext context, required double height}){

double screenHeight=MediaQuery.of(context).size.height;

double responsiveHeight=(screenHeight/932)*height;

return responsiveHeight;
}