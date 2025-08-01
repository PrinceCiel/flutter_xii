import 'package:flutter/material.dart';
import 'package:flutter_xii/ujian_mingguan/toko%20online/layout.dart';

class BerandaToko extends StatelessWidget {
  const BerandaToko({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutToko(title: 'Toko Online', 
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[300],
        child: Container(
          margin: EdgeInsets.only(top: 35, left: 20, right: 20, bottom: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                          child: Image.network('https://img.lazcdn.com/g/p/0ba49456ccdfcc51699d241b8d28be59.jpg_720x720q80.jpg', width: double.infinity, height: 80, fit: BoxFit.cover,)
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                          child: Image.network('https://img.lazcdn.com/g/p/0ba49456ccdfcc51699d241b8d28be59.jpg_720x720q80.jpg', width: double.infinity, height: 80, fit: BoxFit.cover,)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                          child: Image.network('https://img.lazcdn.com/g/p/0ba49456ccdfcc51699d241b8d28be59.jpg_720x720q80.jpg', width: double.infinity, height: 80, fit: BoxFit.cover,)
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                          child: Image.network('https://img.lazcdn.com/g/p/0ba49456ccdfcc51699d241b8d28be59.jpg_720x720q80.jpg', width: double.infinity, height: 80, fit: BoxFit.cover,)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                          child: Image.network('https://img.lazcdn.com/g/p/0ba49456ccdfcc51699d241b8d28be59.jpg_720x720q80.jpg', width: double.infinity, height: 80, fit: BoxFit.cover,)
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                          child: Image.network('https://img.lazcdn.com/g/p/0ba49456ccdfcc51699d241b8d28be59.jpg_720x720q80.jpg', width: double.infinity, height: 80, fit: BoxFit.cover,)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}