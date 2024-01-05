import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashFull();
  }
}

class SplashFull extends StatefulWidget {
  const SplashFull({super.key});

  @override
  State<StatefulWidget> createState() => _SplashPage();
}

class _SplashPage extends State<SplashFull> {
  @override
void initState() {
  super.initState();

  Future.delayed(const Duration(seconds: 1), (){
  Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
});
}

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: Center(
        child: Text('Selamat datang di Aplikasi Laporan'),
      ),
    ));
  }
}