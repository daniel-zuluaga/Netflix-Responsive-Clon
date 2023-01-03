import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedLabelStyle: const TextStyle(
        color: Colors.grey
      ),
      items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_rounded, color: Colors.grey), 
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.play_circle_fill_rounded, color: Colors.grey), 
        label: "play video",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.movie_creation_rounded, color: Colors.grey), 
        label: "Movie Create",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.library_add_rounded, color: Colors.grey), 
        label: "Library",
      ),
    ]);
  }
}