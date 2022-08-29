

import 'package:finanzas_personales/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GraficaLineal extends StatelessWidget {
  const GraficaLineal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            width: Get.width * .45,
            height: Get.width * .45,
            child: LineChart(
              LineChartData(
                rangeAnnotations: RangeAnnotations(
                  horizontalRangeAnnotations: [
                    HorizontalRangeAnnotation(y1: 1, y2: 2, color: Colors.white.withAlpha(5)),
                    HorizontalRangeAnnotation(y1: 3, y2: 4, color: Colors.white.withAlpha(5)),
                    HorizontalRangeAnnotation(y1: 5, y2: 6, color: Colors.white.withAlpha(5)),
                    HorizontalRangeAnnotation(y1: 7, y2: 8, color: Colors.white.withAlpha(5)),
                    HorizontalRangeAnnotation(y1: 9, y2: 10, color: Colors.white.withAlpha(5)),
                  ],verticalRangeAnnotations: []
                ),
                titlesData: FlTitlesData(
                  show: false,
                ),
                minX: 1,
                maxX: 12,
                minY: 0,
                maxY: 10,
                backgroundColor: CustomColors.colorPrincipal,
                gridData: FlGridData(
                  show: true,
                  getDrawingHorizontalLine: (value){
                    return FlLine(
                      color: Colors.white.withAlpha(10),
                      strokeWidth: 1
                    );
                  },
                  getDrawingVerticalLine: (value){
                    return FlLine(
                      color: Colors.white.withAlpha(10),
                      strokeWidth: 1
                    );
                  },
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      const FlSpot(1, 3),
                      const FlSpot(2, 5.8),
                      const FlSpot(3, 7.8),
                      const FlSpot(4, 5.6),
                      const FlSpot(5, 3),
                      const FlSpot(6, 3),
                      const FlSpot(7, 3),
                      const FlSpot(8, 3),
                      const FlSpot(9, 1),
                      const FlSpot(10, 1),
                      const FlSpot(11, 1),
                      const FlSpot(12, 1),
                    ],
                    isCurved: true,
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(colors: [
                        const Color(0xff23b6e6).withAlpha(80),
                        const Color(0xff02d39a).withAlpha(30) 
                        ],
                        // stops: const [0,100],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                      ),
                      
                    )
                  )
                ]
              
              ),
        
            ),
          ),
        ),
      ],
    );
  }
}