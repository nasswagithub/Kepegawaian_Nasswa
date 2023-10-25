import 'package:flutter/material.dart';

class DataCuti extends StatefulWidget {
  const DataCuti({super.key});

  @override
  State<DataCuti> createState() => _DataCutiState();
}

class _DataCutiState extends State<DataCuti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        centerTitle: true,
        title: Text("Data Cuti"),
      ),
    );
  }
}
