import 'package:flutter/material.dart';
import 'package:my_anime_list/core/design/widgets/app_bar.dart';
import '../../domain/entities/anime.dart';

class AnimeDetailsPage extends StatelessWidget {
  const AnimeDetailsPage({
    required this.anime,
    super.key,
  });

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AnimeAppBar(title: anime.title),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.network(anime.image),
              const SizedBox(height: 16.0),
              Text(anime.synopsis),
            ],
          ),
        ),
      ),
    );
  }
}
