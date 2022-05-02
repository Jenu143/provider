import 'package:flutter/material.dart';

class TextFormFileds extends StatelessWidget {
  const TextFormFileds({
    Key? key,
    required this.controller,
    required this.hintName,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintName,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
