// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_xii/main_layouts.dart';

class StackOne extends StatelessWidget {
  const StackOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar Stack', 
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container( width: 200, height: 200, color: Colors.red,),
          Container( width: 150, height: 150, color: Colors.green,),
          Container( width: 100, height: 100, color: Colors.blue,),
        ],
      )
    );
  }
}