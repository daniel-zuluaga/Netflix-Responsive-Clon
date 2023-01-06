import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clon_responsive/cubits/cubits.dart';
import 'package:netflix_clon_responsive/screens/screens.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  final List<Widget> _screen = [
    const HomeScreen(key: PageStorageKey("homeScreen")),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];

  final Map<String, IconData> _icons = const {
    "Home": Icons.home_rounded,
    "Search": Icons.search_rounded,
    "Coming Soon": Icons.queue_play_next_rounded,
    "Downloads": Icons.file_download_rounded,
    "More": Icons.menu_rounded
  };

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<AppBarCubit>(
        create: (_) => AppBarCubit(),
        child: _screen[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: _icons
              .map((title, icon) => MapEntry(
                  title,
                  BottomNavigationBarItem(
                      icon: Icon(icon, size: 30), label: title)))
              .values
              .toList(),
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          selectedFontSize: 15,
          selectedIconTheme: const IconThemeData(size: 40),
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 11,
          unselectedIconTheme: const IconThemeData(size: 30),
          onTap: (index) => setState(() {
                _currentIndex = index;
              })),
    );
  }
}
