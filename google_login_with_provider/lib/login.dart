import 'package:flutter/material.dart';
import 'package:google_login_with_provider/Components/error_dialog.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  GoogleSignIn googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleSignInAccount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome to home "),
            ElevatedButton(
              child: const Text("Sing Out"),
              onPressed: () async {
                googleSignInAccount = await googleSignIn.signOut();

                pop(context: context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
