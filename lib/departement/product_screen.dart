import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 74, 96, 107),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Departemen Product"),
      ),
    );
  }
}
