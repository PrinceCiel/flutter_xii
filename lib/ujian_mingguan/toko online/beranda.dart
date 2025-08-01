// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_xii/ujian_mingguan/toko%20online/layout.dart';
import 'package:flutter_xii/ujian_mingguan/toko%20online/single.dart';

class BerandaToko extends StatelessWidget {
  const BerandaToko({super.key});
  final List<Map<String, dynamic>> produk = const [
    {
      'title': 'Sepatu',
      'image': 'https://img.lazcdn.com/g/p/0ba49456ccdfcc51699d241b8d28be59.jpg_720x720q80.jpg', 
      'price' : 100000,
      'desc' : 'Sepatu sneakers ini dirancang dengan material berkualitas tinggi, memberikan kenyamanan maksimal saat digunakan seharian penuh. Sol karet anti-slip menjaga kestabilan saat berjalan, sementara desain stylish-nya bikin penampilan makin kece di setiap kesempatan. Cocok buat daily wear, nongkrong, atau olahraga ringan.'    ,
      'stok' : '5'
    },
    {
      'title': 'Jaket',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIuRo2qUePQDwX-NqvVIDX0Z22zPaNU2wapw&s',
      'price' : 200000 ,
      'desc' : 'Jaket ini terbuat dari bahan premium yang hangat namun tetap ringan, ideal untuk berbagai kondisi cuaca. Dilengkapi dengan resleting berkualitas dan potongan modern, memberikan kenyamanan maksimal tanpa mengorbankan gaya. Cocok dipakai untuk hangout, riding, atau sekadar ngopi santai di sore hari.'   ,
      'stok' : '10'
    },
    {
      'title': 'Baju',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7gIy4L7ApOXcFXTcl-oVXh116VjNAYz4F4A&s',
      'price' : 300000    ,
      'desc' : 'Baju ini dibuat dari bahan katun combed berkualitas tinggi yang lembut dan adem di kulit. Desain minimalis namun elegan cocok digunakan untuk aktivitas harian, hangout, atau acara semi-formal. Potongan regular fit-nya nyaman dipakai seharian tanpa gerah.',
      'stok' : '15'
    },
    {
      'title': 'Celana',
      'image': 'https://kingofdribble.co.id/cdn/shop/files/904779.jpg?v=1718258038',
      'price' : 400000 ,   
      'desc' : 'Celana ini terbuat dari bahan twill premium yang ringan, kuat, dan nyaman digunakan. Dengan potongan slim fit yang mengikuti bentuk tubuh, celana ini cocok untuk kegiatan harian maupun semi-formal. Jahitan rapi dan detail minimalis memberikan kesan clean dan modern.',
      'stok' : '20'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutToko(title: 'Toko Online', 
      body: Container(
        color: Colors.grey[300],
        child: Container(
          margin: EdgeInsets.only(top: 35, left: 20, right: 20, bottom: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Container(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: produk.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 kolom
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  final product = produk[index];
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => SingleProduk(data: {
                            'title': produk[index]['title'],
                            'image': produk[index]['image'],
                            'price': produk[index]['price'].toString(),
                            'desc' : produk[index]['desc'],
                            'stok' : produk[index]['stok']
                          },)),  
                        );
                      },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[100],
                        boxShadow: const [
                          BoxShadow(color: Colors.black12, blurRadius: 6)
                        ],
                        border: Border.all(color: Colors.black)
                      ),
                      child: Stack(
                        children: [
                          // Background image
                          Positioned(
                            top: 0,
                            bottom: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                              child: Image.network(product['image']!, fit: BoxFit.cover,width: 200, height: 50,),
                            ),
                          ),
                          // Price & Name
                          Positioned(
                            bottom: 100,
                            left: 10,
                            right: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(product['title']!,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                Text('Rp ${product['price']}',
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 12)),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 10,
                            right: 10,
                            bottom: 10,
                            child: Center(child: Text('Lihat Selengkapnya'))
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}