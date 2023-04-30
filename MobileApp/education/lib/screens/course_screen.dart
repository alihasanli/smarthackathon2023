import 'package:colours/colours.dart';
import 'package:flutter/material.dart';

import '../widgets/text.dart';

class CourseScreen extends StatelessWidget {
  String text;
  String imageUrl;
  CourseScreen({
    required this.imageUrl,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> minutes = [
      '5:35 mins',
      '10:48 mins',
      '6:35 mins',
      '20:45 mins',
      '11:15 mins',
      '17:31 mins',
    ];
    List<String> names = [
      'Welcome to the course',
      'Html Basics',
      'CSS Basics',
      'JavaScript Basics',
      'Node.js',
      'Mongo.db',
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity, //MediaQuery.of(context).size.width,
                    height: 350,
                    child: Image.network(imageUrl, fit: BoxFit.fill),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios)),
                        EduText(
                          data: text,
                          size: 28,
                          font: FontWeight.w700,
                        ),
                        const Icon(Icons.more_vert, size: 30)
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 30),
                  child: Column(
                    children: [
                      EduText(
                        data: 'Lessons',
                        size: 28,
                        font: FontWeight.w600,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        height: 450,
                        child: ListView.builder(
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colours.skyBlue,
                                child: EduText(
                                  data: '${index + 1}',
                                  size: 22,
                                  font: FontWeight.w600,
                                ),
                              ),
                              subtitle: EduText(
                                data: minutes[index],
                                size: 20,
                                font: FontWeight.w500,
                              ),
                              title: EduText(
                                data: names[index],
                                size: 20,
                                font: FontWeight.w500,
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
