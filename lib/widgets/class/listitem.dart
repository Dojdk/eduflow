import 'package:flutter/material.dart';

import '../../shared/colors.dart';
import '../../shared/textstyle.dart';

class ListItem extends StatelessWidget {
  final int index;
  const ListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 35,
              child: Text(
                '$index.',
                style: standartText,
              ),
            ),
            const Text(
              'Gülağa Məmmədov',
              style: standartText,
            ),
            const Spacer(),
            const Text(
              '98/100',
              style: standartText,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(height: 1, color: gray),
      ],
    );
  }
}
