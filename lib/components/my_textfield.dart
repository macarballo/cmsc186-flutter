import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 150.0),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}