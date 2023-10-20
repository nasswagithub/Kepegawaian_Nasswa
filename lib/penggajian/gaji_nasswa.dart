import 'package:flutter/material.dart';
import 'package:dashboard_admin/constans.dart';

class Pegawai {
  final int id;
  final String nama;
  final int durasi;
  final int gaji;

  Pegawai({
    required this.id,
    required this.nama,
    required this.durasi,
    required this.gaji,
  });
}

class GajiNasswa extends StatelessWidget {
  final List<Pegawai> employees = [
    Pegawai(id: 1, nama: 'Jung Jaehyun', durasi: 5, gaji: 5000000),
    Pegawai(id: 2, nama: 'Hwang Eunbi', durasi: 3, gaji: 4500000),
    Pegawai(id: 3, nama: 'Jeon Wonwoo', durasi: 8, gaji: 6000000),
    // Disini tempat tambah data karyawan
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar,
        drawer: myDrawer,
        body: EmployeeListView(employees: employees),
      ),
    );
  }
}

class EmployeeListView extends StatefulWidget {
  final List<Pegawai> employees;

  EmployeeListView({required this.employees});

  @override
  _EmployeeListViewState createState() => _EmployeeListViewState();
}

class _EmployeeListViewState extends State<EmployeeListView> {
  List<Pegawai> filteredEmployees = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredEmployees = widget.employees;
    searchController.addListener(searchEmployees);
  }

  void searchEmployees() {
    String searchTerm = searchController.text.toLowerCase();
    filteredEmployees = widget.employees
        .where((employee) =>
            employee.id.toString().contains(searchTerm) ||
            employee.nama.toLowerCase().contains(searchTerm) ||
            employee.durasi.toString().contains(searchTerm) ||
            employee.gaji.toString().contains(searchTerm))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              labelText: 'Filter berdasarkan ID, Nama, Durasi, Gaji',
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Tenure')),
                DataColumn(label: Text('Salary')),
              ],
              rows: filteredEmployees
                  .map((employee) => DataRow(cells: [
                        DataCell(Text(employee.id.toString())),
                        DataCell(Text(employee.nama)),
                        DataCell(Text(employee.durasi.toString())),
                        DataCell(Text(employee.gaji.toString())),
                      ]))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
