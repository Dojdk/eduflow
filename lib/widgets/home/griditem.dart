import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/colors.dart';
import '../../shared/menu.dart';
import '../../shared/textstyle.dart';

class GridItem extends StatelessWidget {
  final int index;
  const GridItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(routes.values.elementAt(index));
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: appbar.withOpacity(0.8),
              spreadRadius: 0,
              offset: const Offset(0, 7),
            ),
          ],
          borderRadius: BorderRadius.circular(17),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 35,
              width: 35,
              child: SvgPicture.asset(
                menu.values.elementAt(index),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              menu.keys.elementAt(index),
              style: labelText,
            ),
          ],
        ),
      ),
    );
  }
}
