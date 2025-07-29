// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_xii/container_widget/container_dua.dart';
import 'package:flutter_xii/container_widget/container_satu.dart';
import 'package:flutter_xii/main_layouts.dart';
import 'package:flutter_xii/row_column_widget/column_satu.dart';
import 'package:flutter_xii/row_column_widget/latihan_satu.dart';
import 'package:flutter_xii/row_column_widget/row_satu.dart';
import 'package:flutter_xii/row_column_widget/tugas_satu.dart';
import 'package:flutter_xii/stack_widget/stack_satu.dart';
import 'package:flutter_xii/stack_widget/stack_tiga.dart';
import 'package:flutter_xii/stack_widget/stack_two.dart';
import 'package:flutter_xii/testimony.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Testimoni(),
      ),
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar Flutter',
      body: Center(
        child: Text(
          'Hello Flutter', 
          style: TextStyle(
            fontSize: 24, 
            color: Colors.black, 
            backgroundColor: Colors.cyanAccent, 
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
