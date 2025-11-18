import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homePage extends StatelessWidget{
  const homePage ({super.key});


  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text ("homepage"),),
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text("dibawah adalah tambah"),
          ElevatedButton( 
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder:
            //   (context) => Notifikasi()),
            // )

            Navigator.pushNamed(context, "/notifikasi");
          },
          child: Text ("akses halaman notifikasi"),
          ),

 ElevatedButton( 
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder:
            //   (context) => Notifikasi()),
            // )

            Navigator.pushNamed(context, "/send");
          },
          child: Text ("akses halaman kirim data"),
          ),

          ],
        ),
      )
    );
  }
  
}