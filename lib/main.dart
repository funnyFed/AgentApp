import 'package:flutter/material.dart';
import 'drawer/main_screen.dart';

void main() {
  runApp(const NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffffffff),
        colorScheme:
            const ColorScheme.light().copyWith(background: Colors.lightBlue),
      ),
    );
  }
}
