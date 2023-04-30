import 'package:education/widgets/text.dart';
import 'package:flutter/material.dart';

class EduButton extends StatefulWidget {
  double? height;
  double? width;
  Color? color;
  String text;

  EduButton({
    super.key,
    this.color = Colors.black,
    this.height = 50,
    this.width = 300,
    required this.text,
  });

  @override
  State<EduButton> createState() => _EduButtonState();
}

class _EduButtonState extends State<EduButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: widget.color,
      minWidth: widget.width,
      height: widget.height,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      onPressed: () {},
      child: EduText(
        data: widget.text,
        color: Colors.white,
        size: 22,
        font: FontWeight.w500,
      ),
    );
  }
}
