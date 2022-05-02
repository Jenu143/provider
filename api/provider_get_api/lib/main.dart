import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_get_api/home_screen.dart';
import 'package:provider_get_api/provider/get_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GetProvider>(create: (context) => GetProvider()),
      ],
      builder: (context, child) {
        return const MaterialApp(
          home: HomeScreen(),
        );
      },
    );
  }
}
