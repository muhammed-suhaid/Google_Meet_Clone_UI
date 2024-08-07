class HistoryTime {
  final String time;
  final String date;

  HistoryTime({
    required this.time,
    required this.date,
  });

  factory HistoryTime.fromMap(Map<String, dynamic> hist) {
    return HistoryTime(
      time: hist['time'],
      date: hist['date'],
    );
  }
}
