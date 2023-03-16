import 'package:flutter/material.dart';
import 'package:faucent/pages/landing_page.dart';

void main() {
  runApp(FaucentApp());
}

class FaucentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Faucent',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
    );
  }
}

 