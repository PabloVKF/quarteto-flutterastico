import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../models/developer_series.dart';

class LineChartWidget extends StatelessWidget {
  final List<DeveloperSeries> data;

  const LineChartWidget({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<charts.Series<DeveloperSeries, num>> series = [
      charts.Series(
          id: "developers",
          data: data,
          domainFn: (DeveloperSeries series, _) => series.year,
          measureFn: (DeveloperSeries series, _) => series.developers,
          colorFn: (DeveloperSeries series, _) => series.barColor)
    ];

    return Container(
      height: 300,
      padding: const EdgeInsets.all(25),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            children: <Widget>[
              const Text("LineChart"),
              Expanded(
                child: charts.LineChart(
                  series,
                  domainAxis: const charts.NumericAxisSpec(
                    tickProviderSpec: charts.BasicNumericTickProviderSpec(
                      zeroBound:
                          false, // zeroBound to false so our chart doesn’t start from origin zero.
                    ),
                    viewport: charts.NumericExtents(2016.0,
                        2022.0), // set the range that we want our axes to span.
                  ),
                  animate: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
