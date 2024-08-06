import 'package:flutter/material.dart';
import 'package:google_meet_clone_ui/components/my_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size(double.infinity, 80),
        child: MyAppbar(),
      ),
    );
  }
}
