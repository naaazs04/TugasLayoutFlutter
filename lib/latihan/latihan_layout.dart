import 'package:flutter/material.dart';

class LatihanLayout extends StatelessWidget {
  const LatihanLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text("Always be in touch",
            softWrap: true,
            style: TextStyle(
              fontSize: 48, fontWeight: FontWeight.w500
            ),),
            Container(
              padding: EdgeInsets.all(15),
              height: 105,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: const Color.fromARGB(255, 243, 181, 254),
              ),
              child: Column(
                spacing: 15,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Vivo",
                      style: TextStyle(fontWeight: FontWeight.bold),),
                       Text("Brazil",
                       style: TextStyle(fontWeight: FontWeight.bold),)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("5GB",
                          style: TextStyle(fontWeight: FontWeight.bold),), 
                            Text("Valid for 30 days",
                            style: TextStyle(fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 146, 145, 145), fontSize: 10),)],
                      ),
                      Text("\$15",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}