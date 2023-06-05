import 'package:flutter/material.dart';

import '../../shared/lessons.dart';
import '../../shared/textstyle.dart';
import '../lessonname_icon.dart';

class ListItem extends StatelessWidget {
  final int index;
  const ListItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(left: 20),
      width: width * .5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LessonNameIcon(
            lessonName: lessons.keys.elementAt(index),
            lessonIcon: lessons.values.elementAt(index),

          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            '13.04.2023, 10:50',
            style: standartGrayText,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Lorem ipsum dolor sit amet sadet consectetur. Molestie elit tempus.',
            style: standartGrayText,
          ),
        ],
      ),
    );
  }
}
