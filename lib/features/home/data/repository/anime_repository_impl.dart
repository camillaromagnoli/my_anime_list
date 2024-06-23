import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:my_anime_list/core/core.dart';
import 'package:my_anime_list/features/home/data/model/model.dart';
import 'package:my_anime_list/features/home/domain/domain.dart';

@Injectable(as: AnimeRepository)
class AnimeRepositoryImpl extends AnimeRepository {
  AnimeRepositoryImpl(this._networkAdapter);

  final NetworkAdapter _networkAdapter;

  @override
  Future<Result<List<Anime>, Failure>> getAnime({
    required int page,
  }) async {
    try {
      final Response response = await _networkAdapter.get(
        url: ApiRoutes.getAnimeSearch,
        queryParameters: {
          'page': page,
        },
      );

      final List<Anime> animeList = (response.data['data'] as List)
          .map((e) => AnimeModel.fromJson(e as Map<String, dynamic>).toEntity())
          .toList();

      return Success(animeList);
    } on DioException catch (e) {
      return handleDioError(e);
    }
  }
}
