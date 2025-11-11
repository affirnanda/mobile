import 'package:flutter/material.dart';



class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row Example'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Container 1
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.black, width: 4),
                ),
                child: const Center(
                  child: Text('container di dalam row'),
                ),
              ),

              const SizedBox(width: 10), // jarak antar container

              // Container 2
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 80, 78, 60),
                  border: Border.all(color: Colors.black, width: 4),
                ),
                child: const Center(
                  child: Text('container di dalam row'),
                ),
              ),

              const SizedBox(width: 10),

              // Container 3
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 147, 201, 201),
                  border: Border.all(color: Colors.red, width: 4),
                ),
                child: const Center(
                  child: Text('container di dalam row'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
