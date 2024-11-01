import 'package:flutter/material.dart';
import 'package:perfumery_app/screens/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ASKreatif Perfume',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff194737)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
