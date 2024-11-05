import 'package:flutter/material.dart';

class AttendancePage extends StatefulWidget {
  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  List<Map<String, dynamic>> attendanceRecords = []; // In-memory attendance records

  Future<void> _markAttendance() async {
    // Simulate marking attendance by adding an entry to the list
    String userEmail = "user@example.com"; // Replace with actual user email if needed
    DateTime timestamp = DateTime.now(); // Get the current timestamp

    attendanceRecords.add({
      'user': userEmail,
      'timestamp': timestamp,
    });

    // Show confirmation message
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Attendance Marked")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendance"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _markAttendance,
          child: Text("Mark Attendance"),
        ),
      ),
    );
  }
}
