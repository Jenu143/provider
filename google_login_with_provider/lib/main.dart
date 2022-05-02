import 'package:flutter/material.dart';
import 'package:google_login_with_provider/home_screen.dart';
import 'package:google_login_with_provider/provider/get_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GetProvider()),
      ],
      builder: (context, child) {
        return MaterialApp(
          home: HomeScreen(),
        );
      },
    );
  }
}
