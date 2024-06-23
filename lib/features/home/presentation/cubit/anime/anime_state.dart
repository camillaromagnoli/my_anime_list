part of 'anime_cubit.dart';

enum AnimeStatus {
  initial,
  loading,
  success,
  error,
}

class AnimeState extends Equatable {
  final AnimeStatus status;
  final String errorMessage;
  final List<Anime> animes;

  const AnimeState({
    required this.status,
    required this.errorMessage,
    required this.animes,
  });

  factory AnimeState.initial() {
    return const AnimeState(
      status: AnimeStatus.initial,
      errorMessage: '',
      animes: [],
    );
  }

  AnimeState copyWith({
    required AnimeStatus status,
    String? errorMessage,
    List<Anime>? animes,
  }) {
    return AnimeState(
      status: status,
      errorMessage: errorMessage ?? this.errorMessage,
      animes: animes ?? this.animes,
    );
  }

  @override
  List<Object?> get props => [
        status,
        errorMessage,
        animes,
      ];
}
