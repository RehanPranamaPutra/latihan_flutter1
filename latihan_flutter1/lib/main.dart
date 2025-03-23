import 'package:flutter/material.dart';
import 'package:latihan_flutter1/navbar/pag_tab_bar.dart';
import 'package:latihan_flutter1/screen/page_mi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//ketik st
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        // Membuat konten berada di tengah layar secara vertikal
        child: Column(
          mainAxisSize:MainAxisSize.min, // Memastikan Column hanya sebesar kontennya
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'gambar/poli.png',
              height: 150,
            ), // Ganti dengan path logo
            Text(
              'Selamat Datang di Politeknik Negeri Padang',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Limau Manih, Padang, Sumbar',
              style: TextStyle(fontSize: 14)),
           
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=> PageMi()));
              },
              color: Colors.deepOrange,
              child: Text('Manajemen Informatika',
                style: TextStyle(fontSize: 14, color: Colors.white)
                ),
              ),
              
            ),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => PageTabBar()
              ));
            },
                color : Colors.orange,
                child : Text ('Page Url Image', style: TextStyle(fontSize: 14, color: Colors.white))
            ),
            
          ],
        ),
      ),
    );
  }
}
