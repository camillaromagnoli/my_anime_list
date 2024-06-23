import 'package:flutter/material.dart';
import 'package:my_anime_list/features/home/data/model/anime_model.dart';

import '../../domain/entities/anime.dart';

class AnimeDetailsPage extends StatelessWidget {
  const AnimeDetailsPage({
    super.key,
    required this.anime,
  });

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          anime.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        titleSpacing: 0,
        automaticallyImplyLeading: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.network(anime.image),
                  SizedBox(
                    height: 16,
                  ),
                  Text(anime.synopsis),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
