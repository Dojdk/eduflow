import 'package:flutter/material.dart';

import '../shared/colors.dart';
import '../shared/textstyle.dart';

class HomeAppBar extends StatelessWidget {
  final bool isHome;
  const HomeAppBar({
    super.key,
    required this.isHome,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.15,
      color: appbar,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  if (isHome) {
                    Scaffold.of(context).openDrawer();
                  } else {
                    Navigator.of(context).pop();
                  }
                },
                icon: Icon(isHome ? Icons.menu : Icons.arrow_back_ios_new,
                    size: 35, color: Colors.white),
              ),
              const Text('Ilkin Karimli', style: appbarText),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mail, size: 35, color: Colors.white),
              ),
            ],
          ),
          const Text('9A', style: appbarText),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
