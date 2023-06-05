import 'package:flutter/material.dart';

import '../../shared/colors.dart';
import '../../shared/lessons.dart';
import '../../shared/textstyle.dart';
import '../lessonname_icon.dart';

class ListItem extends StatefulWidget {
  final int index;
  const ListItem({super.key, required this.index});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool checkbox = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Container(
        margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Row(
          children: [
            Checkbox(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                activeColor: appbar,
                value: checkbox,
                onChanged: (value) {
                  setState(() {
                    checkbox = value!;
                  });
                }),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: constraints.maxWidth * 0.73,
                  child: Row(
                    children: [
                      LessonNameIcon(
                        lessonName: lessons.keys.elementAt(widget.index),
                        lessonIcon: lessons.values.elementAt(widget.index),
                      ),
                      const Spacer(),
                      const Text(
                        '13.04.2023, 10:50',
                        style: standartGrayText,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.circle,
                        size: 15,
                        color:
                            checkbox ? Colors.green[200] : Colors.yellow[300],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.73,
                  child: const Text(
                    'Lorem ipsum dolor sit amet sadet consdasdsdsdsdadasd fsfd sadsads. Molestie elit tempus.',
                    style: standartGrayText,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
