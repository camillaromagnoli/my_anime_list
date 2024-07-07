import 'package:flutter/material.dart';
import 'package:my_anime_list/core/core.dart';

class AppSliverAppBar extends StatelessWidget {
  const AppSliverAppBar({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      snap: false,
      floating: false,
      title: Text(
        title,
        style: AppTextStyles.header1.copyWith(
          color: AppColors.dark1,
        ),
      ),
      shadowColor: Colors.transparent, // Ensure no shadow color
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: AppColors.pure, // Ensure no color bleeding
        ),
      ),
      elevation: 0,
      backgroundColor: AppColors.pure,
    );
  }
}
