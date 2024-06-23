import 'package:flutter/material.dart';
import 'package:my_anime_list/core/di/injection.dart';

import 'core/routes/router.dart';

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
        useMaterial3: true,
      ),
    );
  }
}
