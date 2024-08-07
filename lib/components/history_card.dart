import 'package:flutter/material.dart';
import 'package:google_meet_clone_ui/data/history_data.dart';
import 'package:google_meet_clone_ui/models/history_time_model.dart';
import 'package:google_meet_clone_ui/models/user_model.dart';
import 'package:google_meet_clone_ui/services/history_api.dart';

class HistoryCard extends StatefulWidget {
  const HistoryCard({
    super.key,
  });

  @override
  State<HistoryCard> createState() => _HistoryCardState();
}

class _HistoryCardState extends State<HistoryCard> {
  List<User> users = [];
  @override
  void initState() {
    fetchUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        List<HistoryTime> data =
            historyTimeList.map((hist) => HistoryTime.fromMap(hist)).toList();

        final String time = data[index].time;
        final String date = data[index].date;
        return ListTile(
          leading: CircleAvatar(
            radius: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(user.image),
            ),
          ),
          title: Text(user.name),
          subtitle: Text(
            time,
            style: const TextStyle(color: Colors.grey),
          ),
          trailing: Text(
            date,
            style: const TextStyle(color: Colors.grey),
          ),
        );
      },
    );
  }

  Future<void> fetchUsers() async {
    final response = await HistoryApi.fetchUser();
    setState(() {
      users = response;
    });
  }
}
