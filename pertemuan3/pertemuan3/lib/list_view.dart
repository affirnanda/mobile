import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class ListViewExample extends StatelessWidget{
  ListViewExample ({super.key});
  List<Widget> mywidget = [
    Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all (color: Colors.yellow, width: 4)),                
        ),

     Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all (color: Colors.yellow, width: 4)),                
        ),

     Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all (color: Colors.yellow, width: 4)),                
        ),

       Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all (color: Colors.yellow, width: 4)),                
        ),

       Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all (color: Colors.yellow, width: 4)),                
        ),

       Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all (color: Colors.yellow, width: 4)),                
        ),

       Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all (color: Colors.yellow, width: 4)),                
        ),

       Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all (color: Colors.yellow, width: 4)),                
        ),

       Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all (color: Colors.yellow, width: 4)),                
        ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Example'),
        ),
        // body: ListView.builder(
        //     itemCount: mywidget.length,
        //     scrollDirection: Axis.horizontal,
        //     itemBuilder: (context, index) {
        //       return mywidget[index];
        //     },
        // ),


        body: ListView.separated(
        itemCount: mywidget.length,
        separatorBuilder: (context, index) => const Divider(
          color:Colors.black,
         thickness:2,
         ),
          itemBuilder: (context,index) => mywidget[index],
       
      ),
    )
    );
  }
}