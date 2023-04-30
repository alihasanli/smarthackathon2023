import 'package:education/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

// ignore: must_be_immutable
class EduDrawer extends StatefulWidget {
  List<String> datas;
  EduDrawer({
    super.key,
    required this.datas,
  });

  @override
  State<EduDrawer> createState() => _EduDrawerState();
}

class _EduDrawerState extends State<EduDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/sparklogo.png',
              width: 165,
              height: 165,
            ),
            SizedBox(
              height: 450,
              width: 200,
              child: ListView.builder(
                padding: const EdgeInsets.all(2),
                itemCount: widget.datas.length,
                itemBuilder: (context, index) => GFAccordion(
                  contentChild: EduText(
                    data: 'Topic',
                    size: 20,
                    font: FontWeight.w400,
                  ),
                  titleChild: EduText(
                    data: widget.datas[index],
                    size: 24,
                    font: FontWeight.w700,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
