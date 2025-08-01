import 'package:flutter/material.dart';

class LayoutToko extends StatelessWidget {
  final String title;
  final Widget body;

  const LayoutToko({Key? key, required this.title, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.grey[300],
      ),
      body: body,
    );
  }
}