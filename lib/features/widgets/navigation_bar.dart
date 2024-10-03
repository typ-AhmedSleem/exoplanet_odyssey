import 'package:exoplanet_odyssey/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({super.key});

  @override
  _NaviBarState createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  int _selectedIndex = 2;
  final List<String> _pages = [
    AppRoutesName.homelayout,
    AppRoutesName.Trivia,
    AppRoutesName.LeadboardScore,
    AppRoutesName.Notifications,
    AppRoutesName.SettingsBar,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushNamed(context, _pages[index]);
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        backgroundColor:Colors.transparent,
        color: Colors.white.withOpacity(0.6),
        buttonBackgroundColor: Colors.white.withOpacity(0.6),
        height: 60.0,
        items: const <Widget>[

          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.quiz_outlined, size: 30, color: Colors.white),
          Icon(Icons.notifications, size: 30, color: Colors.white),
          Icon(Icons.leaderboard, size: 30, color: Colors.white),
          Icon(Icons.settings, size: 30, color: Colors.white),
        ],
        onTap: (index) => _onItemTapped(index),
        animationDuration: const Duration(milliseconds: 1),
        animationCurve: Curves.easeInOut,
        index: _selectedIndex,
      );

  }
}
