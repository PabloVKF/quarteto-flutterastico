import 'package:flutter/material.dart';
import 'package:flutter_graph/pages/barchart_example.dart';
import 'package:flutter_graph/pages/linechart_example.dart';
import 'package:flutter_graph/pages/main_page.dart';
import 'package:flutter_graph/pages/piechart_example.dart';
import 'package:flutter_graph/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.HOME: (ctx) => const HomePage(),
        AppRoutes.BARCHART: (ctx) => const BarChartPage(),
        AppRoutes.PIECHART: (ctx) => const PieChartPage(),
        AppRoutes.LINECHART: (ctx) => const LineChartPage(),
      },
    );
  }
}
