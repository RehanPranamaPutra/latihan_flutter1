import 'package:flutter/material.dart';

class PageTentang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang PNP'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          'Politeknik Negeri Padang adalah institusi pendidikan vokasi yang berlokasi di Sumatera Barat.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}