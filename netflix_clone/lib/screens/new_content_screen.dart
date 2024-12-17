import 'package:flutter/material.dart';
import '../widgets/content_list.dart';
import '../data/movies_data.dart';

class NewContentScreen extends StatelessWidget {
  const NewContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          const SliverPadding(
            padding: EdgeInsets.only(top: 20.0),
            sliver: SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Text(
                  'Nouveautés',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 20.0),
            sliver: SliverToBoxAdapter(
              child: ContentList(
                title: 'Nouveaux Films',
                contentList: trendingMovies,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 20.0),
            sliver: SliverToBoxAdapter(
              child: ContentList(
                title: 'Séries du Moment',
                contentList: actionMovies,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 20.0),
            sliver: SliverToBoxAdapter(
              child: ContentList(
                title: 'Top 10 en France',
                contentList: popularMovies,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
