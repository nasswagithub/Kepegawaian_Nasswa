import 'package:flutter/material.dart';

class Karyawan {
  final int id;
  final String nama;
  final String jabatan;
  final double gaji;

  Karyawan({
    required this.id,
    required this.nama,
    required this.jabatan,
    required this.gaji,
  });
}

class ProductScreen extends StatefulWidget {
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<Karyawan> employees = [
    Karyawan(
        id: 1,
        nama: 'Bima Henry Crawford',
        jabatan: 'Product Manager',
        gaji: 8000.000),
    Karyawan(
        id: 2,
        nama: 'Luthfi Harrison Reid ',
        jabatan: 'Chief Cook',
        gaji: 8000.000),
    Karyawan(
        id: 3, nama: 'Rizky Oliver Johnson', jabatan: 'Cook', gaji: 8000.000),
    Karyawan(
        id: 4,
        nama: 'Wira Jonathan Harrison',
        jabatan: 'Cook Helper',
        gaji: 8000.000),
    Karyawan(
        id: 5,
        nama: 'Rizky Oliver Johnson',
        jabatan: 'Bartender',
        gaji: 8000.000),
  ];

  var imgList2 = [
    "Marketing Manager",
    "Brand Manager",
    "Engagement Manager",
    "Area Manager",
    "Engagement Manager",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 74, 96, 107),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Departemen Maintenance"),
      ),
      body: ListView.builder(
        itemCount: employees.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blueGrey,
                  width: 150,
                  height: 150,
                  child: ClipRRect(
                    //borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      "images/${imgList2[index]}.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blueGrey,
                    width: 150,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            "ID: ${employees[index].id}",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Nama: ${employees[index].nama}",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Jabatan: ${employees[index].jabatan}",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Gaji: ${employees[index].gaji.toStringAsFixed(3)}",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
