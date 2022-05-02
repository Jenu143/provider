import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_login_with_provider/Components/error_dialog.dart';
import 'package:google_login_with_provider/login.dart';
import 'package:google_login_with_provider/provider/get_provider.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GetProvider getProvider = GetProvider();

  GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<GetProvider>(
        builder: (context, value, child) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                side: BorderSide(color: Colors.red),
                value: value.btnCheck,
                onChanged: (c) {
                  value.checkValue();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  // Widget login(BuildContext context) {
  //   return ElevatedButton(
  //     onPressed: () async {
  //       circulerDialog(context: context);
  //       await getProvider.getProvider();
  //       final res = getProvider.googleSignInAccount;
  //       if (res?.id == null) {
  //         pop(context: context);
  //         errorDialog(context: context);
  //       } else {
  //         pop(context: context);
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //             builder: (context) => Login(),
  //           ),
  //         );
  //       }
  //     },
  //     child: const Text("Login"),
  //   );
  // }
}
