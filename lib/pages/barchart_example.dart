import 'package:flutter/material.dart';
import 'package:flutter_graph/components/app_drawer.dart';
import 'package:flutter_graph/components/developer_chart.dart';
import 'package:flutter_graph/data/dummy_data.dart';

class BarChartPage extends StatelessWidget {
  const BarChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = dummyData;
    return Scaffold(
      appBar: AppBar(
        title: const Text('BarChart'),
      ),
      body: Center(
        child: DeveloperChart(
          data: data,
        ),
      ),
      drawer: const AppDrawer(),
    );
  }
}
