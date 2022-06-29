import 'package:flutter/material.dart';
import 'package:flutter_graph/utils/app_routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text('Deseja ver qual tipo de exemplo?'),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.HOME,
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.bar_chart),
            title: const Text('BarChart'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.BARCHART,
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.bar_chart),
            title: const Text('PieChart'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.PIECHART,
              );
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
