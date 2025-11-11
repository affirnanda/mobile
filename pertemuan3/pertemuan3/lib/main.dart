import 'package:flutter/material.dart';
import 'package:pertemuan3/container.dart';
import 'package:pertemuan3/column.dart';
import 'package:pertemuan3/grid_view.dart';
import 'package:pertemuan3/row.dart';
import 'package:pertemuan3/list_view.dart';
import 'package:pertemuan3/nested.dart';
import 'package:pertemuan3/tabView.dart';
import 'package:pertemuan3/pageView.dart';


void main(){
runApp(const MyApp());
}

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: pageView(
        ),
      );
    }
  }

  // runApp(ListViewExample());
  // runApp(const ColumnExample());
  // runApp(const ContainerExample());
  // runApp(const RowExample());
  // runApp(GridViewExample());
