import 'package:flutter/material.dart';
import 'package:mp3/screens/home_screen.dart';
import '../wiget/CustomTabbar.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    HomeScreen(),
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.radar,
    Icons.radio_button_checked_rounded,
    Icons.library_music_outlined,
    Icons.person_outline,
  ];
  final List<String> _labels = const [
    'Trang Chủ',
    'Khám Phá',
    '#zingchart',
    'Radio',
    'Cá Nhân',
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: CustomTabar(
             icons: _icons,
            labels: _labels,
            selectedIndex: _selectedIndex,
            onTap: (index) => setState(() => _selectedIndex = index),
          ),
        ),
      ),
    );
  }
}
