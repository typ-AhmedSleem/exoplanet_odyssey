import 'package:exoplanet_odyssey/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NaviBar extends StatefulWidget {
  NaviBar({super.key, required this.currentIndex});

  int currentIndex;

  @override
  _NaviBarState createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  final List<String> _pages = [
    AppRoutesName.homelayout,
    AppRoutesName.Trivia,
    AppRoutesName.Educational,
    AppRoutesName.LeadboardScore,
    AppRoutesName.SettingsBar,
  ];

  void _onItemTapped(int index) {
    setState(() {
      if (widget.currentIndex != index) {
        widget.currentIndex = index;
        Navigator.pushReplacementNamed(context, _pages[index]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      color: Colors.accents.first.withOpacity(0.6),
      buttonBackgroundColor: Colors.accents.first.withOpacity(0.6),
      height: 60.0,
      items: const <Widget>[
        Icon(Icons.home, size: 30, color: Colors.white),
        Icon(Icons.quiz_outlined, size: 30, color: Colors.white),
        Icon(Icons.notifications, size: 30, color: Colors.white),
        Icon(Icons.leaderboard, size: 30, color: Colors.white),
        Icon(Icons.person, size: 30, color: Colors.white),
      ],
      onTap: (index) => _onItemTapped(index),
      animationDuration: const Duration(milliseconds: 250),
      animationCurve: Curves.easeInOut,
      index: widget.currentIndex,
    );
  }
}
