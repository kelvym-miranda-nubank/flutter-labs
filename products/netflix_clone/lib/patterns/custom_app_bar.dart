import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Row(
        children: [
          Image.network(
            "https://crossorigin.me/https://via.placeholder.com/300.png",
            height: 50.0,
            width: 50.0,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
