import 'package:flutter/material.dart';

class AdministratorScreen extends StatefulWidget {
  const AdministratorScreen({super.key});

  @override
  State<AdministratorScreen> createState() => _AdministratorScreenState();
}

class _AdministratorScreenState extends State<AdministratorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 74, 96, 107),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Departemen Administrator"),
      ),
    );
  }
}
