import 'package:flutter/material.dart';
import 'package:netflix_clon_responsive/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50),
        child: const CustomAppBar()
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.cast_rounded),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar()
    );
  }
}