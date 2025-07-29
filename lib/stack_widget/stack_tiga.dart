import 'package:flutter/material.dart';
import 'package:flutter_xii/main_layouts.dart';

class StackThree extends StatelessWidget {
  const StackThree({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Image With Stack', 
      body: Stack(
        children: [
          Image.network('https://i.ytimg.com/vi/_a2V5JQ2l2k/maxresdefault.jpg'),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text('Spiderman Universe', style: TextStyle(color: Colors.white, fontSize: 50),),)
        ],
      )
    );
  }
}