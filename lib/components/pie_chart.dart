import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../models/developer_series.dart';

class PieChart extends StatelessWidget {
  final List<DeveloperSeries> data;

  const PieChart({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<charts.Series<DeveloperSeries, String>> series = [
      charts.Series(
          id: "developers",
          data: data,
          domainFn: (DeveloperSeries series, _) => series.year.toString(),
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
              const Text("PieChart"),
              Expanded(
                child: charts.PieChart(
                  series,
                  // defaultRenderer: charts.ArcRendererConfig(
                  //   arcRendererDecorators: [
                  //     charts.ArcLabelDecorator(
                  //       labelPadding: 8,
                  //       labelPosition: charts.ArcLabelPosition.outside,
                  //     ),
                  //   ],
                  // ),
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
