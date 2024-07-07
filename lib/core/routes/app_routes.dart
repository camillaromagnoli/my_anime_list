import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:my_anime_list/core/core.dart';
import 'package:my_anime_list/features/discover/domain/domain.dart';
import 'package:my_anime_list/features/discover/presentation/presentation.dart';

final homeRoutes = <GoRoute>[
  GoRoute(
    path: AppRoutePaths.homePath,
    builder: (context, state) => Scaffold(
      body: Center(
        child: Text(
          'Home',
          style: AppTextStyles.header1.copyWith(
            color: Colors.black,
          ),
        ),
      ),
    ),
  ),
];

final discoverRoutes = <GoRoute>[
  GoRoute(
    path: AppRoutePaths.discover,
    builder: (context, state) => DiscoverPage(
      animeCubit: GetIt.I.get<AnimeCubit>(),
    ),
  ),
  GoRoute(
    path: AppRoutePaths.animeDetails,
    builder: (context, state) {
      final anime = state.extra as Anime;
      return AnimeDetailsPage(anime: anime);
    },
  ),
];

final libraryRoutes = <GoRoute>[
  GoRoute(
    path: AppRoutePaths.library,
    builder: (context, state) => const Scaffold(
      body: Center(
        child: Text(
          'Library',
          style: AppTextStyles.header1,
        ),
      ),
    ),
  ),
];

final profileRoutes = <GoRoute>[
  GoRoute(
    path: AppRoutePaths.profile,
    builder: (context, state) => const Scaffold(
      body: Center(
        child: Text(
          'Profile',
          style: AppTextStyles.header1,
        ),
      ),
    ),
  ),
];
