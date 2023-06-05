import 'package:flutter/material.dart';

import '../../shared/textstyle.dart';

class FirstItem extends StatelessWidget {
  const FirstItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(
          width: 35,
          child: Text(
            '№',
            style: standartGrayText,
          ),
        ),
        Text(
          'Ad və soyad',
          style: standartGrayText,
        ),
        Spacer(),
        Text(
          'Orta qiymət',
          style: standartGrayText,
        ),
      ],
    );
  }
}
