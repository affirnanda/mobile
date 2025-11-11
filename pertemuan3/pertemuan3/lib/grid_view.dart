import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget{
  const GridViewExample({super.key});
  
  @override
  Widget build (BuildContext context) {
     return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: const Text('Grid View Example'),
        ),

        body: GridView.count(
          
         //Membuat grid dengan 2 kolom 
          crossAxisCount: 2,

          //Menambahkan jarak antara item
          crossAxisSpacing: 5,


          //Menambahkan jarak antara baris
          mainAxisSpacing: 10.0,

          //Menambahkan padding di sekitar grid
          padding: const EdgeInsets.all(10.0),



          
          children: <Widget>[

            Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.blue, width: 5)),
                child: Text("Container satu"),
              ),

              Container(
               margin: const EdgeInsets.all(8.0),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(color: Colors.blue, width: 5)),
                child: Text("Container Dua"),
              ),
              Container(
               margin: const EdgeInsets.all(8.0),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(color: Colors.blue, width: 5)),
                child: Text("Container Kertiga"),
              ),
              Container(
               margin: const EdgeInsets.all(8.0),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(color: Colors.blue, width: 5)),
                child: Text("Container Empat"),
              ),

          ],
        )
      )
     );
  }
}