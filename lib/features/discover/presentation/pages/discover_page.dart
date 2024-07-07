import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_anime_list/core/core.dart';
import 'package:my_anime_list/features/discover/domain/domain.dart';
import 'package:my_anime_list/features/discover/presentation/presentation.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({
    required this.animeCubit,
    super.key,
  });

  final AnimeCubit animeCubit;

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  ScrollController controller = ScrollController();
  int page = 1;
  List<Anime> animes = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(_scrollController);
    widget.animeCubit.getAnimes(page: page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => widget.animeCubit,
        child: BlocConsumer<AnimeCubit, AnimeState>(
          listener: (context, state) {
            if (state.status == AnimeStatus.loading) {
              setState(() {
                isLoading = true;
              });
            } else if (state.status == AnimeStatus.success) {
              setState(() {
                isLoading = false;
                animes.addAll(state.animes);
              });
            } else if (state.status == AnimeStatus.error) {
              showDialog(
                context: context,
                builder: (context) {
                  return const Card(
                    margin: EdgeInsets.all(16),
                    child: Text(
                      'Error',
                      style: TextStyle(color: Colors.red),
                    ),
                  );
                },
              );
            }
          },
          builder: (context, state) {
            if (state.status == AnimeStatus.loading && page == 1) {
              return const Center(
                child: LoadingWidget(),
              );
            } else {
              return CustomScrollView(
                controller: controller,
                slivers: [
                  const AppSliverAppBar(
                    title: 'Anime List',
                  ),
                  SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio:
                          0.75, // Aspect ratio of the items in the grid
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if (index < animes.length) {
                          return AnimeItem(
                            anime: animes[index],
                            onTap: () {
                              context.go(
                                AppRoutePaths.animeDetails,
                                extra: animes[index],
                              );
                            },
                          );
                        } else {
                          return const Center(child: LoadingWidget());
                        }
                      },
                      childCount: animes.length + (isLoading ? 1 : 0),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  void _scrollController() {
    if (!isLoading &&
        controller.position.pixels == controller.position.maxScrollExtent) {
      setState(() {
        page += 1;
      });
      widget.animeCubit.getAnimes(page: page);
    }
  }

  @override
  void dispose() {
    controller.removeListener(_scrollController);
    controller.dispose();
    super.dispose();
  }
}
