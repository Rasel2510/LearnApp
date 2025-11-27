import 'package:flutter/material.dart';
import 'package:task/models/quiz_model.dart';
import 'package:task/srceen/Home/home_page.dart';
import 'package:task/srceen/Secend_src.dart';
import 'package:task/srceen/profile.dart';
import 'package:task/srceen/quize_src.dart';

class BottonNev extends StatefulWidget {
  const BottonNev({super.key});

  @override
  State<BottonNev> createState() => _BottonNevState();
}

class _BottonNevState extends State<BottonNev> {
  int _selectedindex = 0;

  void _navigation(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const SecendSrc(),
    QuizScreen(quiz: QuizData.sampleQuizzes[0]),

    const Placeholder(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: _navigation,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xFF008DE7),
        unselectedItemColor: const Color(0xFF9FA8B4),
        items: List.generate(5, (index) {
          final iconPaths = [
            'assets/images/icon.png',
            'assets/images/icon2.png',
            'assets/images/icon3.png',
            'assets/images/icon4.png',
            'assets/images/icon5.png',
          ];

          return BottomNavigationBarItem(
            icon: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: _selectedindex == index ? 30 : 24,
              height: _selectedindex == index ? 30 : 24,
              child: ImageIcon(AssetImage(iconPaths[index])),
            ),
            label: '',
          );
        }),
      ),
    );
  }
}
