import 'package:flutter/material.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Here I'm Saying "Stack you are relative to this sizedBox size"
    // https://api.flutter.dev/flutter/widgets/Stack-class.html
    return SizedBox(
      height: 500,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/500x500.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          )
        ],
      ),
    );
  }
}
