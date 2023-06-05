import 'package:flutter/material.dart';

import '../widgets/grades/bottombutton.dart';
import '../shared/colors.dart';
import '../shared/lessons.dart';
import '../widgets/appbar.dart';
import '../widgets/grades/listitem.dart';

class GradesPage extends StatelessWidget {
  static const routename = '/gradespage';
  const GradesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          const HomeAppBar(isHome: false),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.65,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        for (var item in lessons.entries) ...[
                          ListItem(lessonName: item.key, lessonIcon: item.value)
                        ],
                      ],
                    ),
                  ),
                ),
                const BottomButton()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
