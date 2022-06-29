import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_graph/models/developer_series.dart';

final List<DeveloperSeries> dummyData = [
  DeveloperSeries(
    year: 2017,
    developers: 40000,
    barColor: charts.ColorUtil.fromDartColor(Colors.green),
  ),
  DeveloperSeries(
    year: 2018,
    developers: 5000,
    barColor: charts.ColorUtil.fromDartColor(Colors.green),
  ),
  DeveloperSeries(
    year: 2019,
    developers: 40000,
    barColor: charts.ColorUtil.fromDartColor(Colors.green),
  ),
  DeveloperSeries(
    year: 2020,
    developers: 35000,
    barColor: charts.ColorUtil.fromDartColor(Colors.green),
  ),
  DeveloperSeries(
    year: 2021,
    developers: 45000,
    barColor: charts.ColorUtil.fromDartColor(Colors.green),
  ),
];
