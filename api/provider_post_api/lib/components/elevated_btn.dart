import 'package:flutter/material.dart';
import 'package:task1/constant/circuler_dialog.dart';
import 'package:task1/constant/error_dialog.dart';
import 'package:task1/constant/string.dart';
import 'package:task1/APi/api_calling.dart';

class ElevatedBtn extends StatelessWidget {
  ElevatedBtn({
    Key? key,
    required this.press,
  }) : super(key: key);

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      child: Text(Strings.loginBtn),
    );
  }
}
