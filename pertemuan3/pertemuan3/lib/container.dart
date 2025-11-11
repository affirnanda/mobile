import 'package:flutter/material.dart';


class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        //appbar
        appBar: AppBar
        (title: const Text('Container Example')),
        
        //body
        body: Center(
          child:Container(
            width: 200,
            height: 200,

            //Styling Container
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black, width: 4),
             ),
             

              //isi container 
              child: Text("Hello, Container"),
            
          ),
        ),
      ),
    );
  }
}