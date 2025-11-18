import 'package:flutter/material.dart';

class send extends StatelessWidget{
  const send ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Send data page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ini adalah halaman kirim"),
            ElevatedButton(
              onPressed:() {
                Navigator.pushNamed(context,
                "/catch",
                arguments: {'message': 'data dari halaman send'});
                
              },
              child: Text ("data berhasil  terkirim"),
              )
          ],
        ),
      ),
    );
  }
}