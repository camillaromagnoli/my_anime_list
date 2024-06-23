import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:my_anime_list/core/core.dart';
import 'package:my_anime_list/features/home/domain/domain.dart';
import 'package:my_anime_list/features/home/presentation/presentation.dart';

final homeRoutes = <GoRoute>[
  GoRoute(
    path: AppRoutePaths.homePath,
    builder: (context, state) => HomePage(
      animeCubit: GetIt.I.get<AnimeCubit>(),
    ),
  ),
  GoRoute(
      path: AppRoutePaths.animeDetails,
      builder: (context, state) {
        final anime = state.extra as Anime;
        return AnimeDetailsPage(anime: anime);
      }),
];
