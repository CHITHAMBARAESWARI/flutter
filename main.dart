import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';
import 'attendance.dart';

void main() {
  runApp(AttendanceApp());
}

class AttendanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendance Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => Login(),
        '/home': (context) => HomePage(),
        '/attendance': (context) => AttendancePage(),
      },
    );
  }
}
