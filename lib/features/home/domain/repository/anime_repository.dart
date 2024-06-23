import 'package:multiple_result/multiple_result.dart';
import 'package:my_anime_list/core/exceptions/failure.dart';
import 'package:my_anime_list/features/home/domain/entities/anime.dart';

abstract class AnimeRepository {
  Future<Result<List<Anime>, Failure>> getAnime({required int page});
}
