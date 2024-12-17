import 'package:flutter/material.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://image.tmdb.org/t/p/original/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 500.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250.0,
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Wednesday_Netflix_logo.png/800px-Wednesday_Netflix_logo.png',
              errorBuilder: (context, error, stackTrace) {
                return const Text(
                  'WEDNESDAY',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                );
              },
            ),
          ),
        ),
        Positioned(
          bottom: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _PlayButton(),
              const SizedBox(width: 16.0),
              _ListButton(),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => print('Play'),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0),
        backgroundColor: Colors.white,
      ),
      icon: const Icon(
        Icons.play_arrow,
        size: 30.0,
        color: Colors.black,
      ),
      label: const Text(
        'Lecture',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }
}

class _ListButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => print('My List'),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0),
        backgroundColor: Colors.white.withOpacity(0.3),
      ),
      icon: const Icon(
        Icons.add,
        size: 30.0,
        color: Colors.white,
      ),
      label: const Text(
        'Ma Liste',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
