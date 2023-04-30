import 'package:education/images.dart';
import 'package:education/screens/course_screen.dart';
import 'package:education/widgets/text.dart';
import 'package:flutter/material.dart';

class EduCourse extends StatelessWidget {
  int index;
  EduCourse({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<String> images = Images.images;
    return InkWell(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                images[index],
                height: index % 2 == 0 ? 250 : 320,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: EduText(
                data: 'data',
                size: 20,
                font: FontWeight.bold,
              ),
            ),
          ],
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CourseScreen(imageUrl: images[index])));
        });
  }
}
