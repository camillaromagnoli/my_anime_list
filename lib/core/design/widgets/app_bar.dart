import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_anime_list/core/core.dart';
import 'package:my_anime_list/core/design/tokens/colors.dart';
import 'package:my_anime_list/core/design/tokens/text_styles.dart';

class AnimeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AnimeAppBar({
    required this.title,
    this.automaticallyImplyLeading = true,
    super.key,
  });

  final String title;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppTextStyles.header1,
      ),
      leading: automaticallyImplyLeading
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.go(AppRoutePaths.homePath),
              color: AppColors.light1,
            )
          : null,
      titleSpacing: automaticallyImplyLeading ? 0 : 16,
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: AppColors.dark1,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
