// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_xii/container_widget/container_satu.dart';
import 'package:flutter_xii/main_layouts.dart';

class ContainerDua extends StatelessWidget {
  const ContainerDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Dua', 
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: RadialGradient(colors: [
              Color.fromARGB(255, 0, 255, 0),
              Color.fromARGB(255, 255, 0, 0), 
              Color.fromARGB(255, 0, 0, 255)
              ],
            ),
            borderRadius: BorderRadius.circular(8)
        ),
        child: Center(child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ContainerSatu()));
          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple
          ),
          child: Text('Pindah ke Halaman 1', style: TextStyle(color: Colors.white),),)),
      ),
    );
  }
}