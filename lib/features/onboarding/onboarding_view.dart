import 'package:exoplanet_odyssey/config/routes/app_routes.dart';
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_height.dart';
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_width.dart';
import 'package:exoplanet_odyssey/core/utils/shared_prefs.dart';
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
                  title: 'Explore Planets',
                  description:
                      'Embark on a celestial journey to explore the captivating realms of planets. From the fiery surface of Venus to the icy mysteries of Neptune, this section is your portal to unravel the diverse landscapes and enigmas',
                ),
                PageViewChild(
                  title: 'Take Challenges in Trivia',
                  description:
                      'Test your planetary knowledge and challenge your intellect with our captivating quizzes.',
                ),
                PageViewChild(
                  title: 'Enjoy Horizons in 3D',
                  description:
                      'Explore the Marvels of Galaxies: Dive into a cosmic journey to learn about the awe-inspiring galaxies that populate our universe.',
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
                            onTap: () async {
                      if (index == 2) {
                        await SharedPrefs.finishOnboarding();
                        Navigator.pushReplacementNamed(
                            context, AppRoutesName.homelayout);
                      } else {
                        index++;
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
