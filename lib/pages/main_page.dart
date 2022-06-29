import 'package:flutter/material.dart';
import 'package:flutter_graph/components/developer_chart.dart';
import 'package:flutter_graph/data/dummy_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = dummyData;
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu aplicativo'),
      ),
      body: Center(
        child: Center(
          child: DeveloperChart(
            data: data,
          ),
        ),
      ),
    );
  }
}
