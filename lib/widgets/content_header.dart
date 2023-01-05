import 'package:flutter/material.dart';
import 'package:netflix_clon_responsive/models/content_model.dart';
import 'package:netflix_clon_responsive/widgets/widgets.dart';

class ContentHeader extends StatelessWidget {

  final Content featuredContent;
  final double? height;

  const ContentHeader({
    super.key, 
    required this.featuredContent, 
    this.height
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: height ?? 550,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                featuredContent.imageUrl,
              ),
              fit: BoxFit.cover
            )
          ),
        ),
        Container(
          height: height ?? 550,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter
            )
          ),
        ),
        Positioned(
          bottom: 110,
          child: SizedBox(
            width: 250,
            child: Image.asset(featuredContent.titleImageUrl!),
          )
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(
                icon: Icons.add,
                title: "My List",
                onTap: () => debugPrint("My List")
              ),
              ElevatedButtonWidget(
                labelButton: const Text(
                  "Play",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                  ),
                ),
                childButton: const Icon(Icons.play_arrow_rounded, color: Colors.black,),
                onTap: (){},
                colorButton: Colors.white,
              ),
              VerticalIconButton(
                icon: Icons.info_outline_rounded,
                title: "info",
                onTap: () => debugPrint("My List")
              ),
            ],
          ),
        )
      ]
    );
  }
}


