import 'package:flutter/material.dart';

import '../../shared/textstyle.dart';

class DateButton extends StatelessWidget {
  final int index;
  final PageController controller;
  const DateButton({super.key, required this.index, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {
              controller.animateToPage(index - 1,
                  duration: const Duration(microseconds: 200),
                  curve: Curves.linear);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        const Text(
          'Monday, 12.10.2020',
          style: labelText,
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
      ],
    );
  }
}
