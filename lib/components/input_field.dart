import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const InputField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green[400]!)),
      ),
    );
  }
}
