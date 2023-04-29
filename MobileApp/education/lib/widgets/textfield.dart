import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EduTextField extends StatelessWidget {
  Icon icon;
  Color color;
  String textLabel;
  bool hidden;
  TextEditingController controller;
  EduTextField({
    super.key,
    required this.controller,
    required this.textLabel,
    this.hidden = false,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: TextField(
        obscureText: hidden,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: icon,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey.shade400)),
          filled: true,
          fillColor: color,
          labelText: textLabel,
        ),
      ),
    );
  }
}
