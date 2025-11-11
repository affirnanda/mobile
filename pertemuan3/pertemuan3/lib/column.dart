import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget{
  const ColumnExample({super.key});

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text('Column Example'),
        ),
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[


              //Container pertama
              Container(
                width:100,
                height:100,
                decoration:BoxDecoration(
                  color:Colors.yellow,
                  border: Border.all(color: Colors.red, width: 5)),
                  
                  child: Text("Container Example"),
                ),
            

            //Container kedua
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.blue, width: 5)),
                child: Text("Second Container"),
              ),

              const Icon(
                Icons.star,
                color: Colors.blue,
                size: 50,   
              ),

              const Text(
                'INI ADALAH SAYA',
                style: TextStyle(fontSize: 16),
              ),

              //Container ketiga
               Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 0, 0),
                  border: Border.all(color: Colors.blue, width: 5)),
                child: Text("Second Container"),
              ),

            ]
          )
        )


    )
    );
  }
}