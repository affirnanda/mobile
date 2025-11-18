import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Ini belum selesai";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Pertemuan 5"),

          //  Popup Menu Button Diperbaiki
          actions: [
            PopupMenuButton<String>(
              onSelected: (value) {
                if (value == "profile") {
                  setState(() {
                    message = "Profile dipilih dari menu";
                  });
                  print("Button Profile diklik");
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: "profile",
                  child: Text("Profile"),
                ),
              ],
            ),
          ],
        ),

        // ===========================
        // Drawer
        // ===========================
        drawer: Builder(
          builder: (context) {
            return Drawer(
              child: ListView(
                children: [
                   DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Icon(Icons.person, size: 100, color: Colors.red),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text("Home"),
                    onTap: () {
                      setState(() {
                        message = "Item Home sudah selesai dari drawer";
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text("Settings"),
                    onTap: () {
                      setState(() {
                        message = "Item Settings sudah selesai dari drawer";
                      });
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          }
        ),

        // ===========================
        // Body
        // ===========================
        body:Builder(builder: (context) =>Center(
          child: Column(
            children: [
              Text(message, style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 20),

              //  Event Listener 
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    message = "Ini sudah selesai";
                  });
                },
                child:  Text("Selesai"),
              ),

              const SizedBox(height: 20),

              // Tombol SnackBar
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(
                      content: Text("Ini SnackBar"),
                      duration: Duration(seconds: 2),
                      action: SnackBarAction(
                        label: "OK",
                        onPressed: () {
                          // Aksi ketika tombol Tutup ditekan
                        },
                      ),
                    ),
                  );

                  setState(() {
                    message = "SnackBar telah ditampilkan";
                  });
                },
                child:  Text("Tampilkan SnackBar"),
              ),


            //dialog
            ElevatedButton(
                onPressed: () {
                 showDialog (
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text ("Konfirmasi"),
                      content: Text ("Apakah Anda yakin ingin melanjutkan?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                             Navigator.of(context).pop();
                            setState(() {
                              
                              message = "dialog berhasil";
                            });
                          },
                          child: Text ('BERHASIL'),
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Tidak'),
                        )
                      ]
                    );
                  }
                 );

                  setState(() {
                    message = "SnackBar telah ditampilkan";
                  });
                },
                child:  Text("DIALOG"),
              ),

            ],
          ),
        ),
      ),
      )
    );
  }
}
