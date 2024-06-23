import 'package:json_annotation/json_annotation.dart';
import 'package:my_anime_list/features/home/domain/entities/anime.dart';

import 'aired_model.dart';
import 'broadcast_model.dart';
import 'data_model.dart';
import 'images_model.dart';
import 'title_model.dart';
import 'trailer_model.dart';

part 'anime_model.g.dart';

@JsonSerializable()
class AnimeModel {
  @JsonKey(name: 'mal_id')
  final int malId;
  final String url;
  final ImagesModel images;
  final TrailerModel? trailer;
  final bool approved;
  final List<TitleModel> titles;
  final String title;
  @JsonKey(name: 'title_english')
  final String? titleEnglish;
  @JsonKey(name: 'title_japanese')
  final String? titleJapanese;
  final String? type;
  final String? source;
  final int? episodes;
  final String? status;
  final bool airing;
  final AiredModel? aired;
  final String? duration;
  final String? rating;
  final int score;
  @JsonKey(name: 'scored_by')
  final int scoredBy;
  final int? rank;
  final int popularity;
  final int members;
  final int favorites;
  final String synopsis;
  final String background;
  final String? season;
  final int? year;
  final BroadcastModel? broadcast;
  final List<DataModel> producers;
  final List<DataModel> licensors;
  final List<DataModel> studios;
  final List<DataModel> genres;
  @JsonKey(name: 'explicit_genres')
  final List<DataModel> explicitGenres;
  final List<DataModel> themes;
  final List<DataModel> demographics;

  AnimeModel({
    required this.malId,
    required this.url,
    required this.images,
    this.trailer,
    required this.approved,
    required this.titles,
    required this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.type,
    this.source,
    this.episodes,
    this.status,
    required this.airing,
    this.aired,
    this.duration,
    this.rating,
    required this.score,
    required this.scoredBy,
    this.rank,
    required this.popularity,
    required this.members,
    required this.favorites,
    required this.synopsis,
    required this.background,
    this.season,
    this.year,
    this.broadcast,
    required this.producers,
    required this.licensors,
    required this.studios,
    required this.genres,
    required this.explicitGenres,
    required this.themes,
    required this.demographics,
  });

  factory AnimeModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeModelToJson(this);

  Anime toEntity() => Anime(
        id: malId,
        image: images.webp.imageUrl,
        title: title,
        synopsis: synopsis,
      );
}
