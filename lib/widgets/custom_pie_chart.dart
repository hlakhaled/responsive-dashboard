import 'package:dashboard/utils/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomPieChart extends StatefulWidget {
  const CustomPieChart({super.key});

  @override
  State<CustomPieChart> createState() => _CustomPieChartState();
}

class _CustomPieChartState extends State<CustomPieChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 6 / 4, child: PieChart(pieChartData()));
  }

  PieChartData pieChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (event, response) {
          touchedIndex = response?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),

      sections: [
        PieChartSectionData(
          value: 40,
          color: AppColors.blueAccent,
          radius: touchedIndex == 0 ? 50 : 40,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 25,
          color: AppColors.lightBlue,
          radius: touchedIndex == 1 ? 50 : 40,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 20,
          color: AppColors.primaryBlue,
          radius: touchedIndex == 2 ? 50 : 40,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 22,
          color: AppColors.beige,
          radius: touchedIndex == 3 ? 50 : 40,
          showTitle: false,
        ),
      ],
    );
  }
}
