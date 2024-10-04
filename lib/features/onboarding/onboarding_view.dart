import 'package:exoplanet_odyssey/config/routes/app_routes.dart';
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_height.dart';
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_width.dart';
import 'package:exoplanet_odyssey/features/onboarding/widgets/build_dot.dart';
import 'package:exoplanet_odyssey/features/onboarding/widgets/page_view_child.dart';
import 'package:exoplanet_odyssey/features/onboarding/widgets/skib_button.dart';
import 'package:exoplanet_odyssey/features/widgets/background_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundImage(
      blurIntensity: 5.0,
      backgroundImage: 'assets/images/onboarding/page1.png',
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: widgetWidth(context: context, width: 41)),
        child: Column(children: [
          SizedBox(height: widgetHeight(context: context, height: 76)),
          // Skip Button
          const SkipButton(),
          SizedBox(
            height: widgetHeight(context: context, height: 24),
          ),

          // PageView for Onboarding pages
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: const [
                PageViewChild(
                  title: 'hhbgjmhjhk',
                  description: 'jfjkkhjgfhmhjdf,k',
                ),
                PageViewChild(
                  title: 'hhbgjmhjhk',
                  description: 'jfjkkhjgfhmhjdf,k',
                ),
                PageViewChild(
                  title: 'hhbgjmhjhk',
                  description: 'jfjkkhjgfhmhjdf,k',
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                3,
                (index) => Center(
                        child: BuildDot(index,
                            listIndex: index, currentPage: _currentPage,
                            // onTap: () {_pageController.animateToPage(index,
                            //     duration: const Duration(milliseconds: 500),
                            //     curve: Curves.easeInOut
                            // );},
                            onTap: () {
                      if (index == 2) {
                        Navigator.pushReplacementNamed(
                            context, AppRoutesName.homelayout);
                      }
                      {
                        _pageController.animateToPage(index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      }
                    }))),
          ),
          SizedBox(
            height: widgetHeight(context: context, height: 85),
          )
        ]),
      ),
    ));
  }
}
