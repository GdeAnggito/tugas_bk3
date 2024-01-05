import 'package:flutter/material.dart';
import 'package:lapor_book_bk/models/akun.dart';

class MyLaporan extends StatefulWidget {
  final Akun akun;
  const MyLaporan({super.key, required this.akun});

  @override
  State<MyLaporan> createState() => _MyLaporanState();
}

class _MyLaporanState extends State<MyLaporan> {
  @override
  Widget build(BuildContext) {
    return Center(
      child: Text('My Laporan'),
    );
  }
}