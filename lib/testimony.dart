// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Testimoni extends StatelessWidget {
  const Testimoni({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
            Color(0xFFf3ffc2),
            Color(0xFFff210d),
          ],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 60,left: 30, right: 30, bottom: 30),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color(0xFFffffff)),     
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Our Testimony', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Text('Berikut tanggapan orang orang terhadap kami', style: TextStyle(fontSize: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                  width: 420,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFe8e9eb)),
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFfafcfc)
                  ),
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('"Temen-temennya solid banget, jadi betah tiap hari ke sekolah."', style: TextStyle(fontSize: 16.5),),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://cdn.rafled.com/anime-icons/images/ea7adfe2be98eff967a60a9b24f881d62a82d6cc3bc47a8af5f5d289df53cbbf.jpg"),
                                  fit: BoxFit.cover 
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Lelouch vi Britannia', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
                                Text('Kaisar Britannia'),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                  width: 420,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFe8e9eb)),
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFfafcfc)
                  ),
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star_border, size: 30,),
                            Icon(Icons.star_border, size: 30,),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('"Guru-gurunya tegas tapi asik, ngajarnya juga jelas."', style: TextStyle(fontSize: 16.5),),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("data:image/jpeg;base64,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"),
                                  fit: BoxFit.cover 
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Windah Parker', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
                                Text('Spiderman Jumbo'),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                  width: 420,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFe8e9eb)),
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFfafcfc)
                  ),
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star_border, size: 30,),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('"Fasilitas lumayan lengkap, apalagi buat praktik jurusan."', style: TextStyle(fontSize: 16.5),),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("data:image/jpeg;base64,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"),
                                  fit: BoxFit.cover 
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Mr.Geda Gedi Geda Geda O', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
                                Text('Presiden Kentang'),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                  width: 420,
                  height: 220,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFe8e9eb)),
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFfafcfc)
                  ),
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star_border, size: 30,),
                            Icon(Icons.star_border, size: 30,),
                            Icon(Icons.star_border, size: 30,),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('"Kegiatan Sekolahnya rame, seru banget ikut-ikutannya.Tapi, terlalu banyak kegiatannya sybau💔."', style: TextStyle(fontSize: 16.5),),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-YpvdMp3ZoE4e_6V9QEeiE6RuaQoSlOsrqsm1GpNvGxCkjn93ew50PPzKq4wiZCSsxDk&usqp=CAU"),
                                  fit: BoxFit.cover 
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Prashow Speed', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
                                Text('Streamer'),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                  width: 420,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFe8e9eb)),
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFfafcfc)
                  ),
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('"Banyak banget dapet skill baru yang kepake sampe sekarang."', style: TextStyle(fontSize: 16.5),),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGcA8kMIzWGUFk0yxPRA8lhnTc-YPRivnpqw&s"),
                                  fit: BoxFit.cover 
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Mul Yuo No', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
                                Text('Master Bela Diri'),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                  width: 420,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFe8e9eb)),
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFfafcfc)
                  ),
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                            Icon(Icons.star, size: 30,),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('"Tiga tahun penuh drama, tapi worth it banget sih sekolah di sini."', style: TextStyle(fontSize: 16.5),),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://cdn.rafled.com/anime-icons/images/ea7adfe2be98eff967a60a9b24f881d62a82d6cc3bc47a8af5f5d289df53cbbf.jpg"),
                                  fit: BoxFit.cover 
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Le Mavour De Mavi', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
                                Text('Kaisar Britannia'),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}