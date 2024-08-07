import 'package:flutter/material.dart';
import 'package:google_meet_clone_ui/components/History_card.dart';
import 'package:google_meet_clone_ui/components/meeting_card.dart';
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
        backgroundColor: Colors.blue[300],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Meetings',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              const MeetingCard(
                title: 'Team sync',
                subtitle: '10:00 am - 10:30 am',
              ),
              const MeetingCard(
                title: 'Client meeting',
                subtitle: '10:30 am - 12.00 pm',
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Show more',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'History',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              const HistoryCard(),
            ],
          ),
        ),
      ),
    );
  }
}
