import 'package:flutter/material.dart';

import '../../shared/lessons.dart';
import '../../shared/textstyle.dart';
import '../lessonname_icon.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        children: [
          for (var item in lessons.entries) ...[
            Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    LessonNameIcon(
                      lessonName: item.key,
                      lessonIcon: item.value,
                    ),
                    const Spacer(),
                    const Text(
                      '8:00-10:50',
                      style: standartGrayText,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                lessons.values.last == item.value
                    ? const SizedBox.shrink()
                    : Container(
                        height: 1,
                        color: Colors.grey,
                      ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
