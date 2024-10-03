import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_height.dart';
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_width.dart';
import 'package:exoplanet_odyssey/features/widgets/background_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/background.dart';

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
          child: Column(children: [
            // Skip Button
            Container(
              alignment: Alignment.topRight,

              child: TextButton(
                onPressed: () {
                  // Skip to last onboarding screen or finish
                },
                child: const Row(
                  children: [
                     Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            )
            Positioned(
              top: 50.0,
              right: 20.0,
              child: TextButton(
                onPressed: () {
                  // Skip to last onboarding screen or finish
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}
//       body: Stack(
//         children: [
//           // Background image
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/onboarding/page1.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // Skip Button
//           Positioned(
//             top: 50.0,
//             right: 20.0,
//             child: TextButton(
//               onPressed: () {
//                 // Skip to last onboarding screen or finish
//               },
//               child: const Text(
//                 'Skip',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),

//           // PageView for Onboarding pages
//           PageView(
//             controller: _pageController,
//             onPageChanged: (int page) {
//               setState(() {
//                 _currentPage = page;
//               });
//             },
//             children: [
//               buildOnboardingPage(
//                 title: 'Insights',
//                 description:
//                     'Embark on an interstellar voyage like never before. Explore distant galaxies, uncover cosmic secrets, and witness the majesty of the universe. Your cosmic adventure begins here.',
//               ),
//               buildOnboardingPage(
//                 title: 'Explore',
//                 description:
//                     'Embark on an interstellar voyage like never before. Explore distant galaxies, uncover cosmic secrets, and witness the majesty of the universe. Your cosmic adventure begins here.',
//               )
//               // Add more onboarding pages here
//             ],
//           ),

//           // Dots Indicator
//           Positioned(
//             bottom: 50.0,
//             left: 0,
//             right: 0,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children:
//                   List.generate(3, (index) => Center(child: buildDot(index))),
//             ),
//           ),

//           // Arrow Button
//         ],
//       ),
//     );
//   }

//   Widget buildOnboardingPage(
//       {required String title, required String description}) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 36.0,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//           const SizedBox(height: 20),
//           Text(
//             description,
//             style: const TextStyle(
//               fontSize: 18.0,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildDot(int index) {
//     return Padding(
//         padding: index != 2
//             ? EdgeInsets.only(right: widgetWidth(context: context, width: 35))
//             : const EdgeInsets.only(right: 0),
//         child: _currentPage == index
//             ? GestureDetector(
//                 onTap: () {
//                   // Move to next page or complete onboarding
//                   _pageController.nextPage(
//                     duration: const Duration(milliseconds: 300),
//                     curve: Curves.easeIn,
//                   );
//                 },
//                 child: CircleAvatar(
//                   radius: widgetHeight(context: context, height: 40),
//                   backgroundColor: Colors.white,
//                   child: Icon(
//                     Icons.arrow_forward,
//                     color: Colors.black,
//                     size: widgetHeight(context: context, height: 30),
//                   ),
//                 ),
//               )
//             : Container(
//                 height: widgetHeight(context: context, height: 20),
//                 width: widgetHeight(context: context, height: 20),
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                       color: Colors.white,
//                       width: widgetHeight(context: context, height: 3)),
//                   shape: BoxShape.circle,
//                 ),
//               ));
//   }
// }
