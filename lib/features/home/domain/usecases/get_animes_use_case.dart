import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:my_anime_list/features/home/domain/entities/anime.dart';
import 'package:my_anime_list/features/home/domain/repository/anime_repository.dart';

abstract class GetAnimeUseCase {
  Future<Result<List<Anime>, Exception>> execute({required int page});
}

@Injectable(as: GetAnimeUseCase)
class GetAnimeUseCaseImpl extends GetAnimeUseCase {
  GetAnimeUseCaseImpl(this._repository);

  final AnimeRepository _repository;

  @override
  Future<Result<List<Anime>, Exception>> execute({required int page}) async {
    return await _repository.getAnime(page: page);
  }
}
