
import 'package:exoplanet_odyssey/core/utils/constants/colors.dart';
import 'package:exoplanet_odyssey/features/auth/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthChoice extends StatelessWidget {
  const AuthChoice({
    super.key, required this.isLogin,
  });
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(isLogin ? 'Don\'t have an account?':'Already have an account?',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: kPrimaryColor,
            )),
        CustomTextButton(
          text: isLogin?'Register':'Login',
          onPressed: () {},
        ),
      ],
    );
  }
}
