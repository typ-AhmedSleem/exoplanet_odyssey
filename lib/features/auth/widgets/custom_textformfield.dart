import 'package:exoplanet_odyssey/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.obscureText = false,
  });
  final String labelText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: kPrimaryColor,
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
        ),
        suffixIcon: Icon(
          obscureText
              ? Icons.lock_outline
              : labelText.contains('Email')
                  ? Icons.email_outlined
                  : Icons.person_outline_rounded,
          color: kPrimaryColor,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
        ),
      ),
      style: const TextStyle(color: kPrimaryColor),
    );
  }
}
