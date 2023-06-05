import 'package:eduflow/shared/lessons.dart';
import 'package:flutter/material.dart';

import '../shared/colors.dart';
import '../widgets/appbar.dart';
import '../widgets/exercise/listitem.dart';

class ExercisePage extends StatelessWidget {
  static const routename = '/exercisepage';
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: Column(
          children: [
            const HomeAppBar(isHome: false),
            Expanded(
              child: ClipRect(
                child: ListView.builder(
                    padding: const EdgeInsets.only(top: 50),
                    itemCount: lessons.length,
                    itemBuilder: (context, index) => ListItem(
                          index: index,
                        )),
              ),
            ),
          ],
        ));
  }
}
