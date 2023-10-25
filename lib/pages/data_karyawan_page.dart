import 'package:flutter/material.dart';

class DataKaryawan extends StatefulWidget {
  const DataKaryawan({super.key});

  @override
  State<DataKaryawan> createState() => _DataKaryawanState();
}

class _DataKaryawanState extends State<DataKaryawan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        centerTitle: true,
        title: Text("Data Karyawan"),
      ),
    );
  }
}
