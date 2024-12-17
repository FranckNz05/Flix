import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/content_list.dart';
import '../widgets/content_header.dart';
import '../data/movies_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController? _scrollController;
  double _scrollOffset = 0.0;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController!.offset;
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 50.0),
        child: CustomAppBar(scrollOffset: _scrollOffset),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          const SliverToBoxAdapter(
            child: ContentHeader(),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 20.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildCategoryButtons(),
                  const SizedBox(height: 20),
                  ContentList(
                    title: 'Tendances actuelles',
                    contentList: trendingMovies,
                    imageType: ImageType.poster,
                  ),
                  const SizedBox(height: 20),
                  ContentList(
                    title: 'Films d\'action',
                    contentList: actionMovies,
                    imageType: ImageType.poster,
                  ),
                  const SizedBox(height: 20),
                  ContentList(
                    title: 'Originals Netflix',
                    contentList: netflixOriginals,
                    isOriginals: true,
                    imageType: ImageType.poster,
                  ),
                  const SizedBox(height: 20),
                  ContentList(
                    title: 'Populaire sur Netflix',
                    contentList: popularMovies,
                    imageType: ImageType.poster,
                  ),
                  const SizedBox(height: 20),
                  _buildMobileGamesSection(),
                  const SizedBox(height: 20),
                  const ContentList(
                    title: 'Reprendre avec le profil de Franck_Nz',
                    key: PageStorageKey('continue_watching'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _buildCategoryButton('Séries'),
          const SizedBox(width: 10),
          _buildCategoryButton('Films'),
          const SizedBox(width: 10),
          _buildCategoryButton('Catégories', showDropdown: true),
        ],
      ),
    );
  }

  Widget _buildCategoryButton(String text, {bool showDropdown = false}) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Colors.white),
        ),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          if (showDropdown) ...[
            const SizedBox(width: 4),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
              size: 20,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildMobileGamesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            'Jeux mobiles',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _buildGameCard('Monument Valley 3', 'Réflexion'),
              _buildGameCard('GTA: San Andreas', 'Action'),
              _buildGameCard('Narcos: Cartel Wars', 'Stratégie'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildGameCard(String title, String genre) {
    return Container(
      width: 140,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            child: Container(
              height: 140,
              color: Colors.grey[700],
              child: Center(
                child: Icon(
                  Icons.games,
                  size: 50,
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  genre,
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
