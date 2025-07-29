import 'package:flutter/material.dart';
import 'package:flutter_xii/main_layouts.dart';

class RowOne extends StatelessWidget {
  const RowOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Row Satu', 
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FlutterLogo(size: 50),
          FlutterLogo(size: 50),
          FlutterLogo(size: 50),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('AKU ESEMKA'),
              Text('AKU ESEMA'),
            ],
          )
        ],
      ) 
    );
  }
}