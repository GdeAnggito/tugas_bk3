import 'package:flutter/material.dart';
import 'package:lapor_book_bk/models/akun.dart';

class AllLaporan extends StatefulWidget {
  final Akun akun;
  const AllLaporan({super.key, required this.akun});

  @override
  State<AllLaporan> createState() => _AllLaporanState ();
}

class _AllLaporanState extends State<AllLaporan> {
  @override
  Widget build(BuildContext) {
    return Center(
      child: Text('All Laporan'),
    );
  }
}