import 'package:flutter/material.dart';
import 'package:my_anime_list/core/design/tokens/colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.dark2,
      ),
    );
  }
}
