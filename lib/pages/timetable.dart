import 'package:eduflow/widgets/timetable/datebutton.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../shared/colors.dart';
import '../widgets/timetable/listitem.dart';

class TimeTable extends StatelessWidget {
  static const routename = '/timetablepage';
  const TimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          const HomeAppBar(isHome: false),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: PageView.builder(
              itemCount: 1,
              controller: controller,
              itemBuilder: (context, index) => Column(
                children: [
                  DateButton(index: index, controller: controller),
                  const ListItem()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

