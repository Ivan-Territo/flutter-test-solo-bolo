import 'package:flutter/material.dart';
import 'package:flutter_login_profile_lesson/pages/page2.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exam',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/signup": (context) => const SecondPage(),
        "/home": (context) => const HomePage(),
      },
      home: const HomePage(),
    );
  }
}
