import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/home_screen.dart';
import 'package:task1/provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginApiProvider>(
          create: (context) => LoginApiProvider(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  HomeScreen(),
      ),
    );
  }
}
