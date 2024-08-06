import 'package:flutter/material.dart';
import 'package:google_meet_clone_ui/components/my_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: MyAppbar(),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text(
          'New',
          style: TextStyle(color: Colors.white),
        ),
        icon: const Icon(
          Icons.videocam_outlined,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
