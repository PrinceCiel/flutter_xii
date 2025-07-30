import 'package:flutter/material.dart';
import 'package:flutter_xii/main_layouts.dart';

class ListDua extends StatelessWidget {
  ListDua({super.key});

  final List<Map<String, dynamic>> listData = [
    {'color':Colors.red, 'partai':'Partai Banteng'},
    {'color':Colors.blue, 'partai':'Partai Joged'},
    {'color':Colors.green, 'partai':'Partai Solid'},
    {'color':Colors.yellow, 'partai':'Partai Cerah'},
    {'color':Colors.black, 'partai':'Partai Gelap'},
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'List Builder', 
      body: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, i) {
          final data = listData[i];
          return Container(
            color: data['color'],
            width: 200,
            height: 200,
            child: Center(child: Text(data['partai']),),
          );
        },
      )
    );
  }
}