import 'package:flutter/material.dart';

class LatihanKontainer extends StatelessWidget {
  const LatihanKontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Kontainer"),
      backgroundColor: Colors.blueAccent),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.amber,
          ),
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Text("Ini anak kontainer"),),
      ),
    );
  }
}