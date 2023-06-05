import 'package:flutter/material.dart';

import 'pages/homepage.dart';
import 'pages/classpage.dart';
import 'pages/timetable.dart';
import 'pages/exercisepage.dart';
import 'pages/gradespage.dart';
import 'pages/attendancepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const HomePage(),
      routes: {
        ClassPage.routename: (context) => const ClassPage(),
        TimeTable.routename: (context) => const TimeTable(),
        ExercisePage.routename: (context) => const ExercisePage(),
        GradesPage.routename: (context) => const GradesPage(),
        AttendancePage.routename: (context) => const AttendancePage(),
      },
    );
  }
}
