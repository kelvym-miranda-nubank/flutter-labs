import 'package:flutter/material.dart';
import 'package:router/router.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({
    super.key,
    this.scrollOffset = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 24,
      ),
      color: Colors.black.withOpacity(
        (scrollOffset / 350).clamp(0, 1).toDouble(),
      ),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset("assets/images/50x50.jpg"),
            const SizedBox(width: 12),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  AppBarButton(title: "TV Shows", href: "/netflix_clone"),
                  AppBarButton(title: "Movies", href: "/netflix_clone"),
                  AppBarButton(title: "My List", href: "/netflix_clone"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppBarButton extends StatelessWidget {
  final String href;

  final String title;

  const AppBarButton({Key? key, required this.href, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(href),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}
