import 'package:flutter/material.dart';

class pageView extends StatelessWidget {
  const pageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page View Example"),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,

        children: [
          Container(
            color: Colors.red,
            child: const Center(
              child: Text(
                "Page 1",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),

          //CONTAINER 2
           Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                "Page 2",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),

          //CONTAINER 3
           Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                "Page 3",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),

        ],
      )
    );
  }
}