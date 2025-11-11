import 'package:flutter/material.dart';

class Nested  extends StatelessWidget{
  const Nested ({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Nested Widgets Example")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
           
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Icon(Icons.home, size: 50, color: Colors.blue),
                  SizedBox(height: 10),
                  Text("Data")
                ]
              )
            ),

         Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Icon(Icons.favorite, size: 50, color: Colors.blue),
                  SizedBox(height: 10),
                  Text("Data")
                ]
              )
            ),


             Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Icon(Icons.star, size: 50, color: Colors.blue),
                  SizedBox(height: 10),
                  Text("Data")
                ]
              )
            )


          ],
        )
      ),
      );
  }
}