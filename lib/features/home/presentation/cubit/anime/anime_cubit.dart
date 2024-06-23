import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:my_anime_list/features/home/domain/entities/anime.dart';
import 'package:my_anime_list/features/home/domain/usecases/get_animes_use_case.dart';

part 'anime_state.dart';

@Injectable()
class AnimeCubit extends Cubit<AnimeState> {
  final GetAnimeUseCase _getAnimeUseCase;

  AnimeCubit({
    required GetAnimeUseCase getAnimeUseCase,
  })  : _getAnimeUseCase = getAnimeUseCase,
        super(AnimeState.initial());

  Future<void> getAnimes({required int page}) async {
    emit(state.copyWith(status: AnimeStatus.loading));
    final result = await _getAnimeUseCase.execute(page: page);
    result.when(
      (success) {
        emit(state.copyWith(status: AnimeStatus.success, animes: success));
      },
      (error) {
        emit(state.copyWith(status: AnimeStatus.error));
      },
    );
  }
}
