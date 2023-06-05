import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/attendance/listitem.dart';

import '../shared/lessons.dart';

class AttendancePage extends StatelessWidget {
  static const routename = '/attendancepage';
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HomeAppBar(isHome: false),
          Expanded(
            child: ListView.builder(
              itemCount: lessons.length,
              padding: const EdgeInsets.only(top: 50),
              itemBuilder: (context, index) => ListItem(
                index: index,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
