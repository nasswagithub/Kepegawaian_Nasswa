import 'package:dashboard_admin/dashboard_admin.dart';
import 'package:dashboard_admin/dashboard_hrd.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: DashboardAdmin(),
      home: DashboardHrd(),
    );
  }
}
