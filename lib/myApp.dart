import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juridico/homePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      
      home: const MyHomePage()
    );
  }
}