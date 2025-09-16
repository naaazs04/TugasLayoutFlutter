import 'package:flutter/material.dart';

class LatihanKolom extends StatelessWidget {
  const LatihanKolom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Kolom"),
      backgroundColor: Colors.amberAccent,
      foregroundColor: Colors.white,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Container(width: 100,height: 50,color: Colors.pinkAccent),
        Container(width: 200,height: 200,color: Colors.purpleAccent),
        Container(width: 150,height: 125,color: Colors.tealAccent),
      ],),
    );
  }
}