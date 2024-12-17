import 'package:flutter/material.dart';
import '../widgets/content_list.dart';

class NewContentScreen extends StatelessWidget {
  const NewContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Tout nouveau'),
        actions: [
          IconButton(
            icon: const Icon(Icons.cast),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: const [
          ContentList(
            title: 'Nouveautés',
            key: PageStorageKey('new_releases'),
          ),
          SizedBox(height: 20),
          ContentList(
            title: 'Ajouts récents',
            key: PageStorageKey('recent_adds'),
          ),
          SizedBox(height: 20),
          ContentList(
            title: 'Bientôt disponible',
            key: PageStorageKey('coming_soon'),
          ),
        ],
      ),
    );
  }
}
