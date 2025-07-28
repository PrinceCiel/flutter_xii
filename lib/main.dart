// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_xii/main_layouts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HelloFlutter(),
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
