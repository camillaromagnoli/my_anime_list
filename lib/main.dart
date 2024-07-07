import 'package:flutter/material.dart';

import 'core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'My Anime List',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.pure,
        useMaterial3: true,
      ),
    );
  }
}
