import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

import '../../shared/lessons.dart';
import '../../shared/textstyle.dart';
import '../lessonname_icon.dart';

import '../../model/chartdata.dart';

class ListItem extends StatelessWidget {
  final int index;
  const ListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LessonNameIcon(
                lessonName: lessons.keys.elementAt(index),
                lessonIcon: lessons.values.elementAt(index),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Ümumi dərs: 120',
                style: standartText,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Buraxılmış dərs: 3',
                style: standartText,
              ),
            ],
          ),
          SizedBox(
            height: 125,
            width: 125,
            child: SfCircularChart(
              series: [
                PieSeries<ChartData, String>(
                  dataSource: [
                    ChartData('Buraxılmış dərs', 3, Colors.green),
                    ChartData('Qalıq dərs', 117, Colors.red),
                  ],
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                  pointColorMapper: (ChartData data, _) => data.color,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
