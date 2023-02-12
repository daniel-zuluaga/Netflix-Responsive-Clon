import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search for...",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                      suffixIcon: IconButton(
                        onPressed: (){},
                        icon: const Icon(
                          Icons.search_rounded,
                          color: Colors.grey,
                        ),
                      )
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}