import 'package:flutter/material.dart';
import 'package:flutter_graph/components/app_drawer.dart';
import 'package:flutter_graph/components/line_chart.dart';
import 'package:flutter_graph/data/dummy_data.dart';

class LineChartPage extends StatelessWidget {
  const LineChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = dummyData;
    return Scaffold(
      appBar: AppBar(
        title: const Text('LineChart'),
      ),
      body: Center(
        child: LineChartWidget(
          data: data,
        ),
      ),
      drawer: const AppDrawer(),
    );
  }
}
