import 'package:flutter/material.dart';
import 'package:flutter_xii/latihan/list.dart';
import 'package:flutter_xii/main_layouts.dart';

class Portofolio extends StatelessWidget {
  const Portofolio({super.key});

  final List<Map<String, dynamic>> portofolio = const [
    {
      'title': 'Mobile App UI',
      'image': 'https://static.vecteezy.com/system/resources/previews/002/209/482/non_2x/mobile-app-development-illustration-free-vector.jpg',
      'projects': [
        {
          'title': 'Finansial App',
          'desc': 'Aplikasi keuangan pelajar UI minimalis.',
          'image': 'https://picsum.photos/300/200?1',
          'tools': 'Figma',
          'year': '2024'
        },
        {
          'title': 'Laundry Online',
          'desc': 'Layanan laundry digital modern.',
          'image': 'https://picsum.photos/300/200?2',
          'tools': 'Figma',
          'year': '2023'
        },
        {
          'title': 'Task Manager',
          'desc': 'Aplikasi to-do stylish dan intuitif.',
          'image': 'https://picsum.photos/300/200?3',
          'tools': 'Figma',
          'year': '2023'
        },
        {
          'title': 'Online Class UI',
          'desc': 'UI E-learning responsive dan friendly.',
          'image': 'https://picsum.photos/300/200?4',
          'tools': 'Figma',
          'year': '2022'
        },
      ]
    },
    {
      'title': 'Web Design',
      'image': 'https://static.vecteezy.com/system/resources/previews/024/100/487/non_2x/web-ui-ux-design-mobile-app-development-online-application-design-coding-web-building-concept-modern-flat-cartoon-style-illustration-on-white-background-vector.jpg',
      'projects': [
        {
          'title': 'Landing Page Startup',
          'desc': 'Website untuk startup finansial.',
          'image': 'https://picsum.photos/300/200?5',
          'tools': 'Adobe XD',
          'year': '2023'
        },
        {
          'title': 'Portfolio Website',
          'desc': 'Website pribadi responsive.',
          'image': 'https://picsum.photos/300/200?6',
          'tools': 'Figma',
          'year': '2024'
        },
        {
          'title': 'Food Ordering Site',
          'desc': 'Desain pemesanan makanan online.',
          'image': 'https://picsum.photos/300/200?7',
          'tools': 'Figma',
          'year': '2022'
        },
        {
          'title': 'Dashboard Admin',
          'desc': 'Dashboard UI clean untuk admin panel.',
          'image': 'https://picsum.photos/300/200?8',
          'tools': 'Adobe XD',
          'year': '2023'
        },
      ]
    },
    {
      'title': 'Branding',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSTyjfnAUgCKNlNw4nHwUKrE23vZoE-Kkzcg&s',
      'projects': [
        {
          'title': 'Logo Warung Digital',
          'desc': 'Logo clean untuk toko digital.',
          'image': 'https://picsum.photos/300/200?9',
          'tools': 'Illustrator',
          'year': '2023'
        },
        {
          'title': 'Brand Kit Cafe',
          'desc': 'Logo, menu, dan kemasan cafe kopi.',
          'image': 'https://picsum.photos/300/200?10',
          'tools': 'Photoshop',
          'year': '2024'
        },
        {
          'title': 'Stationery Startup',
          'desc': 'Branding tools bisnis teknologi.',
          'image': 'https://picsum.photos/300/200?11',
          'tools': 'Illustrator',
          'year': '2023'
        },
        {
          'title': 'Packaging Snack Lokal',
          'desc': 'Kemasan makanan kekinian.',
          'image': 'https://picsum.photos/300/200?12',
          'tools': 'Photoshop',
          'year': '2022'
        },
      ]
    },
    {
      'title': 'Social Media Post',
      'image': 'https://cdn.dribbble.com/userupload/6314747/file/original-5949b00ba6ca162ce5e4454b432487a0.jpg?resize=752x&vertical=center',
      'projects': [
        {
          'title': 'Feed Ramadan Sale',
          'desc': 'Promo feed IG penuh warna.',
          'image': 'https://picsum.photos/300/200?13',
          'tools': 'Canva',
          'year': '2024'
        },
        {
          'title': 'Event Poster',
          'desc': 'Poster acara sekolah modern.',
          'image': 'https://picsum.photos/300/200?14',
          'tools': 'Photoshop',
          'year': '2023'
        },
        {
          'title': 'Quote Design',
          'desc': 'Desain kutipan inspiratif aesthetic.',
          'image': 'https://picsum.photos/300/200?15',
          'tools': 'Canva',
          'year': '2023'
        },
        {
          'title': 'Sosmed UKM',
          'desc': 'Template IG story untuk UMKM lokal.',
          'image': 'https://picsum.photos/300/200?16',
          'tools': 'Photoshop',
          'year': '2022'
        },
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'My Portofolio',
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: portofolio.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 kolom
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final product = portofolio[index];
            return GestureDetector(
                onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ListProject(title: product['title'], projects: product['projects'],)),  
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100],
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 6)
                  ],
                ),
                child: Stack(
                  children: [
                    // Background image
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(product['image']!, fit: BoxFit.cover),
                      ),
                    ),
                    // Overlay
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                    // Price & Name
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product['title']!,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}