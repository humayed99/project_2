import 'package:flutter/material.dart';
import 'package:project_2/Pages/home.dart';
import 'package:project_2/Pages/library.dart';
import 'package:project_2/pages/search.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  var currentIndex = 0;

  static const pages = [MyHomePage(), SearchPage(), MyLibraryPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.4),
        currentIndex: currentIndex,
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.stacked_bar_chart_outlined), label: 'Your Libarary'),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
