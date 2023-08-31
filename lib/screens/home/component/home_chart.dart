import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../const.dart';

class HomeChart extends StatelessWidget {
  const HomeChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300, // Set the width of the chart
        height: 300, // Set the height of the chart
        padding: const EdgeInsets.all(16.0),
        child: SfCartesianChart(
          // Initialize the chart with the required settings
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(
              // axisLine: AxisLine(
              //   color: Colors.amber,
              //   width: 0,
              // ),
              // title: AxisTitle(text: 'Primary Axis'),
              ),
          axes: <ChartAxis>[
            NumericAxis(
                // name: 'SecondaryAxis',
                // title: AxisTitle(text: 'Secondary Axis'),
                ),
          ],
          series: <ChartSeries>[
            // Define your data series for the primary axis
            ColumnSeries<SalesData, String>(
              color: kSecondaryColor,
              dataSource: <SalesData>[
                SalesData('Jan', 20, 0),
                SalesData('Feb', 5, 0),
                SalesData('Mar', 8, 0),
                SalesData('Apr', 15, 0),
              ],
              xValueMapper: (SalesData sales, _) => sales.month,
              yValueMapper: (SalesData sales, _) => sales.primarySales,
              // yAxisName: 'PrimaryAxis',
              // Customize the appearance of the bars
              dataLabelSettings: const DataLabelSettings(),
            ),
            // Define your data series for the secondary axis
            ColumnSeries<SalesData, String>(
              color: kPrimaryColor,
              dataSource: <SalesData>[
                SalesData('Jan', 0, 25),
                SalesData('Feb', 0, 10),
                SalesData('Mar', 0, 13),
                SalesData('Apr', 0, 20),
              ],
              xValueMapper: (SalesData sales, _) => sales.month,
              yValueMapper: (SalesData sales, _) => sales.secondarySales,
              // yAxisName: 'SecondaryAxis',
              // Customize the appearance of the bars
              dataLabelSettings: const DataLabelSettings(),
            ),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  final String month;
  final double primarySales;
  final double secondarySales;

  SalesData(this.month, this.primarySales, this.secondarySales);
}
