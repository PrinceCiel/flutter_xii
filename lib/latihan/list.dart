import 'package:flutter/material.dart';
import 'package:flutter_xii/latihan/detail.dart';
import 'package:flutter_xii/main_layouts.dart';

class ListProject extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> projects;
  const ListProject({super.key, required this.title, required this.projects,});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: title, 
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => DetailProject(data: project)),  
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 6)
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)
                      ),
                      image: DecorationImage(
                        image: NetworkImage(project['image']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(project['title']!,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text(project['desc']!,style: TextStyle(fontSize: 13),)
                        ],
                      ),
                    ) 
                  )
                ],
              ),
            ),
            
          );
        },
      )
    );
  }
}