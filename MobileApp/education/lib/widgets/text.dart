import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class EduText extends StatelessWidget {
  String data;
  Color? color;
  double? size;
  FontWeight? font;

  EduText({
    this.color = Colors.black,
    required this.data,
    this.size = 18,
    this.font = FontWeight.normal,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: GoogleFonts.roboto(fontSize: size, color: color, fontWeight: font),
    );
  }
}
