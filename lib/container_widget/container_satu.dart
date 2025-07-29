// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_xii/main_layouts.dart';

class ContainerSatu extends StatelessWidget {
  const ContainerSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Satu',
      body: Container(
        margin: EdgeInsets.only(top: 10),
        color: Colors.blue,
        width: 200,
        height: 200,
        child: Container(
          margin: EdgeInsets.all(8),
          color: Colors.red,
          child: ElevatedButton(onPressed: () {
            Navigator.pop(context);
          },
          child : Text('text'))
        ),
      ),
    );
  }
}