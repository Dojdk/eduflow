import 'package:flutter/material.dart';

import '../../shared/textstyle.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    decoration: const BoxDecoration(
                      color: Color(0xff96A6AC),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(17)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Köhnə qiymətlər',
                          style: labelText.copyWith(color: Colors.white),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                );
  }
}