import 'package:flutter/material.dart';

class LatihanTeks extends StatelessWidget {
  const LatihanTeks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan teks")),
      body: Center(child: Text("Ini latihan teks",
      style: TextStyle(
        fontSize: 48, 
        fontWeight: FontWeight.bold, 
        fontStyle: FontStyle.italic,
      ),
      ),),
    );
  }
}