import 'package:flutter/material.dart';
import 'package:google_meet_clone_ui/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Google Meet UI',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
