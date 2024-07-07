import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_anime_list/core/core.dart';

class RootNavigation extends StatefulWidget {
  const RootNavigation({
    super.key,
    required this.child,
    required this.location,
  });

  final Widget child;
  final String location;

  @override
  State<RootNavigation> createState() => _RootNavigationState();
}

class _RootNavigationState extends State<RootNavigation> {
  int _currentIndex = 0;

  static const List<MyCustomBottomNavBarItem> tabs = [
    MyCustomBottomNavBarItem(
      icon: Icon(Icons.home),
      activeIcon: Icon(Icons.home),
      label: 'Home',
      initialLocation: AppRoutePaths.homePath,
    ),
    MyCustomBottomNavBarItem(
      icon: Icon(Icons.search_outlined),
      activeIcon: Icon(Icons.search),
      label: 'Discover',
      initialLocation: AppRoutePaths.discover,
    ),
    MyCustomBottomNavBarItem(
      icon: Icon(Icons.library_add),
      activeIcon: Icon(Icons.book),
      label: 'Library',
      initialLocation: AppRoutePaths.library,
    ),
    MyCustomBottomNavBarItem(
      icon: Icon(Icons.account_circle_outlined),
      activeIcon: Icon(Icons.account_circle),
      label: 'Profile',
      initialLocation: AppRoutePaths.profile,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: widget.child),
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: _getCurrentIndex(widget.location),
        onTap: (int index) => _goOtherTab(context, index),
        items: tabs,
      ),
    );
  }

  int _getCurrentIndex(String location) {
    switch (location) {
      case AppRoutePaths.homePath:
        return 0;
      case AppRoutePaths.discover:
        return 1;
      case AppRoutePaths.library:
        return 2;
      case AppRoutePaths.profile:
        return 3;
      default:
        return 0;
    }
  }

  void _goOtherTab(BuildContext context, int index) {
    // if (index == _currentIndex) return;
    GoRouter router = GoRouter.of(context);
    String location = tabs[index].initialLocation;

    setState(() {
      _currentIndex = index;
    });

    router.go(location);
  }
}
