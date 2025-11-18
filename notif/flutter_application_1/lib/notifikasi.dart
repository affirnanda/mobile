import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


import 'package:flutter_local_notifications/flutter_local_notifications.dart';


//insialisasi plugin
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class Notifikasi extends StatelessWidget{
  const Notifikasi ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Notifikasi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ini adalah halaman notifikasi"),
            ElevatedButton(
              onPressed:() {
                Navigator.pop(context);
              },
              child: Text ("Kembali ke halaman utama"),
              ),

              //ini file notifikasi dart
              ElevatedButton(
                onPressed: () {
                  showNotifikasi();
                },
                child: Text ("Tampilan Notifikasi"),
                 ),
          ],
        ),
      ),
    );
  }
}

Future<void> showNotifikasi() async {
  const AndroidNotificationDetails androidDetails =
  const AndroidNotificationDetails (
    'channel_id',
    'channel_name',
    importance: Importance.max,
    priority: Priority.high,
  );

  const NotificationDetails generalNotificationDetails =
  NotificationDetails(android: androidDetails);

  await flutterLocalNotificationsPlugin.show(
    0,
    'ini judul',
    'ini isi notifikasi',
    generalNotificationDetails,
  );
}