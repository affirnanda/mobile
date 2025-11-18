import 'package:flutter/material.dart';

class Catch extends StatelessWidget{
  const Catch ({super.key});

  @override
  Widget build(BuildContext context) {
    final data= ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text("catch data page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ini adalah halaman notifikasi"),
            Text("ini adalah data yang dikirim : ${data["message"]}"),
            ElevatedButton(
              onPressed:() {
                Navigator.pop(context);
              },
              child: Text ("Kembali ke halaman sebelumnnya"),
              )
          ],
        ),
      ),
    );
  }
}