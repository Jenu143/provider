import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/components/elevated_btn.dart';
import 'package:task1/components/text_fields.dart';
import 'package:task1/constant/circuler_dialog.dart';
import 'package:task1/constant/error_dialog.dart';
import 'package:task1/constant/string.dart';
import 'package:task1/model/api_model.dart';
import 'package:task1/provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  LoginApiProvider providers = LoginApiProvider();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              email(),
              const SizedBox(height: 30),
              password(),
              const SizedBox(height: 50),
              loginButton(),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedBtn loginButton() {
    return ElevatedBtn(
      press: () async {
        print(
          "${emailController.text} \n ${passController.text}",
        );
        if (emailController.text.isNotEmpty && passController.text.isNotEmpty) {
          // loder
          circulerDialog(context);

          CustomApiResponse<ApiModel> res = await providers.apiProvider(
            email: emailController.text,
            password: passController.text,
          );

          if (res.statusCode != 200) {
            navigatorPop(context: context);
            return errorDialog(
              context: context,
              error: "You have no registered account! \nGet Register first...",
            );
          } else {
            navigatorPop(context: context);
            return errorDialog(
              context: context,
              error: "Congratulation! you are Registered...",
            );
          }
        } else {
          errorDialog(context: context, error: "Enter Missing value");
        }
      },
    );
  }

  Widget password() {
    return TextFormFileds(
      controller: passController,
      hintName: Strings.passwordName,
    );
  }

  Widget email() {
    return TextFormFileds(
      controller: emailController,
      hintName: Strings.emailName,
    );
  }
}
