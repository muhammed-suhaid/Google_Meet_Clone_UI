import 'package:flutter/material.dart';

class MeetingCard extends StatelessWidget {
  final String title;
  final String subtitle;
  const MeetingCard({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.blue[300],
        ),
        child: const Icon(Icons.calendar_month),
      ),
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
