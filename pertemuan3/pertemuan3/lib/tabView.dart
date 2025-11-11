import 'package:flutter/material.dart';

class Tabview extends StatelessWidget{
  const Tabview({super.key});

  @override
  Widget build (context) {
    return DefaultTabController (
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title:const Text("Tab View Example"),
          
          //untuk navigator atas
          // bottom:const TabBar(
          //   tabs: [
          //     Tab(icon: Icon(Icons.home), text: "Home"),
          //     Tab(icon: Icon(Icons.favorite), text: "Favorite"),
          //     Tab(icon: Icon(Icons.settings), text: "Settings"),
          //   ],
          // ),
        ),

       body:const TabBarView(
          children: [
            Center(child: Text("Home Content")),
            Center(child: Text("Favorite Content")),
            Center(child: Text("Pengaturan")),
          ],
        ),

        bottomNavigationBar: const Material(
          color: Colors.blue,
          child: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.favorite), text: "Favorite"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ],
          ),
        ),

      )
    );
  }
}