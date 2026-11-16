import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/menu_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => MenuProvider(),
      child: const KedaiKopiApp(),
    ),
  );
}

class KedaiKopiApp extends StatelessWidget {
  const KedaiKopiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kedai Kopi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6F4E37),
          primary: const Color(0xFF6F4E37),
        ),
        scaffoldBackgroundColor: const Color(0xFFFAF6F1),
      ),
      home: const HomeScreen(),
    );
  }
}
