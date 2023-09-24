import 'package:flutter/material.dart';
import 'package:whatsappclone/Screens/mainscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      home: MainScreen(),
    );
  }
}