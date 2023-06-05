import 'package:flutter/material.dart';

import '../../shared/colors.dart';
import '../../shared/lessons.dart';
import '../../shared/textstyle.dart';
import '../lessonname_icon.dart';

class ListItem extends StatelessWidget {
  final String lessonName;
  final String lessonIcon;
  const ListItem(
      {super.key, required this.lessonName, required this.lessonIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              LessonNameIcon(lessonName: lessonName, lessonIcon: lessonIcon),
              const Spacer(),
              const Text(
                '98/100',
                style: standartText,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'test',
                style: standartGrayText,
              ),
              Text(
                '9.03.2023, 12:30',
                style: standartGrayText,
              )
            ],
          ),
          const SizedBox(height: 10),
          if (lessons.entries.last.key != lessonName)
            Container(height: 1, color: gray),
        ],
      ),
    );
  }
}
