// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_xii/main_layouts.dart';

class LatihanRowColumn extends StatelessWidget {
  const LatihanRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Latihan Row Column', 
      body: Center(
        child: Container(
          height: 70,
          width: double.infinity,
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.call, size: 50,),
                  Text('Call')
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.navigation, size: 50,),
                  Text('Route')
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.share, size: 50,),
                  Text('Share')
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}