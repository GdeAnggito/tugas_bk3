//import 'dart:io';
//import 'dart:js_util';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:lapor_book_bk/components/styles.dart';
//import 'package:lapor_book_bk/components/vars.dart';
import 'package:lapor_book_bk/models/akun.dart';
//import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import '../components/input_widget.dart';
import '../components/validators.dart';

class AddFormPage extends StatefulWidget {
@override
State<StatefulWidget> createState() => AddFormState();
}

class AddFormState extends State<AddFormPage> {
final _auth = FirebaseAuth.instance;
final _firestore = FirebaseFirestore.instance;
final _storage = FirebaseStorage.instance;

bool _isLoading = false;

String? judul;
String? instansi;
String? deskripsi;

ImagePicker picker = ImagePicker();
XFile? file;

@override
Widget build(BuildContext context) {
  final arguments =
      ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

  final Akun akun = arguments['akun'];
  return Scaffold(
    appBar: AppBar(
      backgroundColor: primaryColor,
      title:
          Text('Tambah Laporan', style: headerStyle(level: 3, dark: false)),
      centerTitle: true,
    ),
    body: SafeArea(
      child: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Form(
                child: Container(
                  margin: EdgeInsets.all(40),
                  child: Column(
                    children: [
                      InputLayout(
                          'Judul Laporan',
                          TextFormField(
                              onChanged: (String value) => setState(() {
                                    judul = value;
                                  }),
                              validator: notEmptyValidator,
                              decoration:
                                  customInputDecoration("Judul laporan"))),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: 10),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.photo_camera),
                                Text(' Foto Pendukung',
                                    style: headerStyle(level: 3)),
                              ],
                            )),
                      ),
                      InputLayout(
                          'Instansi',
                          DropdownButtonFormField<String>(
                              decoration: customInputDecoration('Instansi'),
                              items: [],
                              onChanged: (selected) {
                                setState(() {
                                  instansi = selected;
                                });
                              })),
                      InputLayout(
                          "Deskripsi laporan",
                          TextFormField(
                            onChanged: (String value) => setState(() {
                              deskripsi = value;
                            }),
                            keyboardType: TextInputType.multiline,
                            minLines: 3,
                            maxLines: 5,
                            decoration: customInputDecoration(
                                'Deskripsikan semua di sini'),
                          )),
                      SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        child: FilledButton(
                            style: buttonStyle,
                            onPressed: () {
                              addTransaksi(akun);
                            },
                            child: Text(
                              'Kirim Laporan',
                              style: headerStyle(level: 3, dark: false),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
    ),
  );
}
}

class AddFormState extends State<AddFormPage> {
@override
Widget build(BuildContext context) {
return Scaffold(
    appBar: AppBar(
      backgroundColor: primaryColor,
      title:
          Text('Tambah Laporan', style: headerStyle(level: 3, dark: false)),
      centerTitle: true,
    ),
    body: SafeArea(
      child: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Form(
                child: Container(
                  margin: EdgeInsets.all(40),
                  child: Column(
                    children: [
                      InputLayout(
                          'Judul Laporan',
                          TextFormField(
                              onChanged: (value) =>{},
                              validator: notEmptyValidator,
                              decoration:
                                  customInputDecoration("Judul laporan"))),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: 10),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.photo_camera),
                                Text(' Foto Pendukung',
                                    style: headerStyle(level: 3)),
                              ],
                            )),
                      ),
                      InputLayout(
                          'Instansi',
                          DropdownButtonFormField<String>(
                              decoration: customInputDecoration('Instansi'),
                              items: [],
                              onChanged: (value) =>{})),
                      InputLayout(
                          "Deskripsi laporan",
                          TextFormField(
                            onChanged: (value) =>{},
                            keyboardType: TextInputType.multiline,
                            minLines: 3,
                            maxLines: 5,
                            decoration: customInputDecoration(
                                'Deskripsikan semua di sini'),
                          )),
                      SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        child: FilledButton(
                            style: buttonStyle,
                            onPressed: () {},
                            child: Text(
                              'Kirim Laporan',
                              style: headerStyle(level: 3, dark: false),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
    ),
  );
}