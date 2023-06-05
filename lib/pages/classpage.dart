import 'package:flutter/material.dart';

import '../widgets/class/firstitem.dart';
import '../widgets/class/listitem.dart';
import '../shared/colors.dart';
import '../widgets/appbar.dart';

class ClassPage extends StatelessWidget {
  static const routename = '/classpage';
  const ClassPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          const HomeAppBar(
            isHome: false,
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(17),
              ),
              width: width * 0.9,
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 10),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const FirstItem();
                  }
                  return ListItem(
                    index: index,
                  );
                },
                itemCount: 101,
              ),
            ),
          )
        ],
      ),
    );
  }
}
