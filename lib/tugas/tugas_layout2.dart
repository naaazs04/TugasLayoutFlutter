import 'package:flutter/material.dart';

class LayoutFlutter2 extends StatelessWidget {
  const LayoutFlutter2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topRight, end: Alignment.bottomCenter, 
            colors: [
              const Color.fromARGB(255, 12, 148, 46),
              const Color.fromARGB(255, 61, 200, 23),
            ],
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0, 0.5),
                child:Container(
                    width: 295, height: 295,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("gambar/001.png")
                      ),
                    ),
                ),
              ),
              Align(
                alignment: Alignment(0, 0),
                child: Padding(padding: EdgeInsets.all(20.0),
                child: Container(
                  height: 500,
                  width: 395,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(118, 182, 251, 184),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment(-1, -1),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Lets",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50,),),
                          Text("Explore Our",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),),
                          Text("Diversity",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),)
                        ],
                  ),
                ),
                ),
              ),
              Positioned(bottom: 5, right: -165,
              child: Image.asset("gambar/002.png", height: 350,),),
            
              // Align(alignment: Alignment(4.5, 1,),
              // child: Image.asset("gambar/002.png", width: 400,),
              //),
            ],
          ),
        ),
      ),
    );
  }
}