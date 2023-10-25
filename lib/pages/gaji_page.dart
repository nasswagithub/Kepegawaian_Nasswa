import 'package:flutter/material.dart';

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

class Gaji extends StatefulWidget {
  const Gaji({super.key});

  @override
  State<Gaji> createState() => _GajiState();
}

class _GajiState extends State<Gaji> {
  final List<Pegawai> employees = [
    Pegawai(id: 1, nama: 'Jung Jaehyun', durasi: 5, gaji: 5000000),
    Pegawai(id: 2, nama: 'Hwang Eunbi', durasi: 3, gaji: 4500000),
    Pegawai(id: 3, nama: 'Jeon Wonwoo', durasi: 8, gaji: 6000000),
    Pegawai(id: 4, nama: 'Jung Jaehyun', durasi: 5, gaji: 5000000),
    Pegawai(id: 5, nama: 'Hwang Eunbi', durasi: 3, gaji: 4500000),
    Pegawai(id: 6, nama: 'Jeon Wonwoo', durasi: 8, gaji: 6000000),
    Pegawai(id: 7, nama: 'Jung Jaehyun', durasi: 5, gaji: 5000000),
    Pegawai(id: 8, nama: 'Hwang Eunbi', durasi: 3, gaji: 4500000),
    Pegawai(id: 9, nama: 'Jeon Wonwoo', durasi: 8, gaji: 6000000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        centerTitle: true,
        title: Text("Gaji & Tunjangan"),
      ),
      body: EmployeeListView(employees: employees),
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
                DataColumn(label: Text('Nama')),
                DataColumn(label: Text('Durasi')),
                DataColumn(label: Text('Gaji')),
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
