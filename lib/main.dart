import 'package:flutter/material.dart';
import 'package:untitled4/Views/LoginScrean.dart';
import 'package:untitled4/Views/MovieSelectionScrean.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cinema Tiket booking',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),

      ),
      routes: {"/MoviesSelectionScrean": (context) => Movieselectionscrean(),


      },
      home: LoginScrean(),
      debugShowCheckedModeBanner: false,
    );
  }
}

