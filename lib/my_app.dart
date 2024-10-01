import 'package:exoplanet_odyssey/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData.dark().copyWith(
            textTheme: GoogleFonts.poppinsTextTheme(
              ThemeData.dark().textTheme,
            ),
          ),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (settings) => AppRoute.onGenerate(settings),
        );
      },
    );
  }
}
