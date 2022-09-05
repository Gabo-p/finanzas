

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
            width: Get.width * 0.9,
            height: Get.width - 100,
            child: LineChart(
              LineChartData(
                rangeAnnotations: RangeAnnotations(
                  horizontalRangeAnnotations: [
                    HorizontalRangeAnnotation(y1: 0, y2: 10000, color: Colors.black.withAlpha(3)),
                    HorizontalRangeAnnotation(y1: 15000, y2: 20000, color: Colors.black.withAlpha(3)),
                    HorizontalRangeAnnotation(y1: 25000, y2: 30000, color: Colors.black.withAlpha(3)),
                    HorizontalRangeAnnotation(y1: 35000, y2: 40000, color: Colors.black.withAlpha(3)),
                    HorizontalRangeAnnotation(y1: 45000, y2: 50000, color: Colors.black.withAlpha(3)),
                  ],
                  verticalRangeAnnotations: [
                    VerticalRangeAnnotation(x1: 5, x2: 10, color: Colors.black.withAlpha(3)),
                    VerticalRangeAnnotation(x1: 15, x2: 20, color: Colors.black.withAlpha(3)),
                    VerticalRangeAnnotation(x1: 25, x2: 30, color: Colors.black.withAlpha(3)),
                    VerticalRangeAnnotation(x1: 35, x2: 40, color: Colors.black.withAlpha(3)),
                    VerticalRangeAnnotation(x1: 45, x2: 50, color: Colors.black.withAlpha(3)),
                    VerticalRangeAnnotation(x1: 55, x2: 60, color: Colors.black.withAlpha(3)),
                  ]
                ),
                titlesData: FlTitlesData(
                  show: false,
                ),
                minX: 1,
                maxX: 60,
                minY: 0,
                maxY: 50000,
                backgroundColor: Colors.white,
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
                      const FlSpot(1, 8000.55),
                      const FlSpot(10, 10000.35),
                      const FlSpot(20, 15000.84),
                      const FlSpot(30, 10000.32),
                      const FlSpot(40, 30000.02),
                      const FlSpot(50, 40000.6),
                      const FlSpot(60, 10000.5),
                      // const FlSpot(, 5.6),
                      // const FlSpot(5, 3),
                      // const FlSpot(6, 3),
                      // const FlSpot(7, 3),
                      // const FlSpot(8, 3),
                      // const FlSpot(9, 1),
                      // const FlSpot(10, 1),
                      // const FlSpot(11, 1),
                      // const FlSpot(12, 1),
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