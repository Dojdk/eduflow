import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../shared/textstyle.dart';

class LessonNameIcon extends StatelessWidget {
  final String lessonName;
  final String lessonIcon;
  const LessonNameIcon({
    super.key,
    required this.lessonName,
    required this.lessonIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(lessonIcon, height: 25, width: 25),
        const SizedBox(
          width: 15,
        ),
        Text(
          lessonName,
          style: labelText,
        ),
      ],
    );
  }
}
