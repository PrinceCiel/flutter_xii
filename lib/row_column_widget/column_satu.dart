import 'package:flutter/material.dart';
import 'package:flutter_xii/main_layouts.dart';

class ColumnOne extends StatelessWidget {
  const ColumnOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Column Bro', 
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Ini Row 1 ya teman teman'),
              Text('Ini Row 2 ya teman teman'),
              Text('Ini Row 3 ya teman teman'),
            ],
          ),
          FlutterLogo(size: 50),
          FlutterLogo(size: 50),
          FlutterLogo(size: 50),
        ],
      )
    );
  }
}