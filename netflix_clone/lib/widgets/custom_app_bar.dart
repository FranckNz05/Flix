import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({
    super.key,
    this.scrollOffset = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      color: Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/0/08/Netflix_2015_logo.svg',
              width: 30.0,
              height: 30.0,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.movie, color: Colors.red, size: 30.0);
              },
            ),
            const SizedBox(width: 12.0),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarButton(
                    title: 'Séries',
                    onTap: () => print('Séries'),
                  ),
                  _AppBarButton(
                    title: 'Films',
                    onTap: () => print('Films'),
                  ),
                  _AppBarButton(
                    title: 'Ma Liste',
                    onTap: () => print('Ma Liste'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function() onTap;

  const _AppBarButton({
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
