import 'package:flutter/material.dart';
import 'package:netflix_clon_responsive/assets.dart';

class CustomAppBar extends StatelessWidget {

  final double scroolOffset;
  const CustomAppBar({
    super.key, 
    this.scroolOffset = 0.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      color: Colors.black.withOpacity((scroolOffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            const SizedBox(width: 20),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarButton(
                    title: "TV Show", 
                    onTap: () => debugPrint("TV Show")
                  ),
                  _AppBarButton(
                    title: "Movies", 
                    onTap: () => debugPrint("Movies")
                  ),
                  _AppBarButton(
                    title: "My List", 
                    onTap: () => debugPrint("My List")
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {

  final String title;
  final Function onTap;

  const _AppBarButton({
    required this.title, 
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Text(
        title, 
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700
        ),
      ),
    );
  }
}