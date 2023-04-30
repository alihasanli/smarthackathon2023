import 'package:colours/colours.dart';
import 'package:education/widgets/text.dart';
import 'package:flutter/material.dart';

import '../images.dart';

class EduGuide extends StatelessWidget {
  const EduGuide({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> lesson = Images.lessons;
    return ListView.builder(
      itemCount: lesson.length,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colours.deepSkyBlue,
          borderRadius: BorderRadius.circular(18),
        ),
        child: ListTile(
          title: EduText(
            data: '${lesson[index]}.pdf',
            size: 20,
            font: FontWeight.w700,
            color: Colors.black,
          ),
          trailing: const Icon(
            Icons.download,
            color: Colors.black,
            size: 22,
          ),
        ),
      ),
    );
  }
}
