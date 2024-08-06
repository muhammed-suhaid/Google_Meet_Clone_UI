import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(),
            Image.asset(
              'assets/logo/logo.png',
              height: 230,
            ),
            Image.asset(
              'assets/logo/text_logo.png',
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
