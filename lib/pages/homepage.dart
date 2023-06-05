import 'package:eduflow/shared/menu.dart';
import 'package:flutter/material.dart';

import '../widgets/home/listitem.dart';
import '../widgets/home/griditem.dart';
import '../shared/colors.dart';
import '../shared/lessons.dart';
import '../widgets/appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          const HomeAppBar(
            isHome: true,
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: height * 0.22,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: lessons.length,
              itemBuilder: (context, index) => ListItem(
                index: index,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.45,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 17),
                  itemCount: menu.length,
                  itemBuilder: (context, index) => GridItem(index: index)),
            ),
          )
        ],
      ),
    );
  }
}
