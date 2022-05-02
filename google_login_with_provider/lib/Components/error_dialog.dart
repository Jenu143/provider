import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<void> errorDialog({required BuildContext context}) {
  return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title:
              const Text("Select your email first to Redister your account..."),
          actions: [
            TextButton(
              onPressed: () {
                pop(context: context);
              },
              child: const Text("OK"),
            ),
          ],
        );
      });
}

Future<void> circulerDialog({required BuildContext context}) {
  return showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      });
}

void pop({required BuildContext context}) {
  return Navigator.of(context).pop();
}
