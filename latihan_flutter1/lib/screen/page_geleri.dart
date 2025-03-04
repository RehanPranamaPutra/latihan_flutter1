import 'package:flutter/material.dart';

class PageGeleri extends StatelessWidget {
  const PageGeleri({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Gambar'),
      ),
      
      //buat directory gambar
      // masukin dan rename yang lebih simple nama filenya
      // update pubspec.yaml
      // kita pub get atau pub upgrade

      body: Center(
        child: Image.asset('gambar/poli.png'),
      ),
    );
  }
}