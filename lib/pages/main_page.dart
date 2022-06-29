import 'package:flutter/material.dart';
import 'package:flutter_graph/components/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu aplicativo'),
      ),
      body: const Center(
        child: Text('oi'),
      ),
      drawer: const AppDrawer(),
    );
  }
}
