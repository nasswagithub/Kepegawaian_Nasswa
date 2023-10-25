import 'package:flutter/material.dart';

class DataAbsensi extends StatefulWidget {
  const DataAbsensi({super.key});

  @override
  State<DataAbsensi> createState() => _DataAbsensiState();
}

class _DataAbsensiState extends State<DataAbsensi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        centerTitle: true,
        title: Text("Data Absensi"),
      ),
    );
  }
}
