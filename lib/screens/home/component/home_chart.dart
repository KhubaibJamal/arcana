import 'package:agha_steel/size_config.dart';
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
        width: SizeConfig.screenWidth!,
        height: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 5,
              spreadRadius: 3,
              color: Colors.grey,
            )
          ],
        ),
        padding: EdgeInsets.all(getProportionateScreenWidth(16)),
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(
            majorGridLines: const MajorGridLines(width: 0),
          ),
          primaryYAxis: NumericAxis(
            majorGridLines: const MajorGridLines(width: 0),
          ),
          axes: <ChartAxis>[
            NumericAxis(
              majorGridLines: const MajorGridLines(width: 0),
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
