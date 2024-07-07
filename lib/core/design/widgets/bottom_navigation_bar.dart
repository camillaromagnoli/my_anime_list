import 'package:flutter/material.dart';
import 'package:my_anime_list/core/design/tokens/colors.dart';
import 'package:my_anime_list/core/design/tokens/text_styles.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    this.onTap,
    required this.currentIndex,
    required this.items,
  });

  final void Function(int)? onTap;
  final int currentIndex;
  final List<BottomNavigationBarItem> items;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: AppTextStyles.caption.copyWith(color: AppColors.pure),
      unselectedLabelStyle:
          AppTextStyles.caption.copyWith(color: AppColors.pure),
      selectedItemColor: const Color(0xFF434343),
      selectedFontSize: 12,
      unselectedItemColor: const Color(0xFF838383),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      onTap: onTap,
      currentIndex: currentIndex,
      items: items,
    );
  }
}

class MyCustomBottomNavBarItem extends BottomNavigationBarItem {
  final String initialLocation;

  const MyCustomBottomNavBarItem({
    required this.initialLocation,
    required Widget icon,
    String? label,
    Widget? activeIcon,
  }) : super(
          icon: icon,
          label: label,
          activeIcon: activeIcon ?? icon,
        );
}
