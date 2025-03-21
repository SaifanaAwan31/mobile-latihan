import 'package:flutter/material.dart';
import 'soal1_listview.dart';
import 'soal2_stack.dart';
import 'soal3_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Soal Flutter',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50], // Background biru muda
      appBar: AppBar(
        title: const Text('Awan Uji Coba 1'),
        backgroundColor: Colors.lightBlue, // AppBar biru muda
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Soal1ListView()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue, // Tombol biru muda
              ),
              child: const Text('Soal 1 - ListView Teman'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Soal2Stack()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue, // Tombol biru muda
              ),
              child: const Text('Soal 2 - Stack Gambar Profil'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Soal3Layout()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue, // Tombol biru muda
              ),
              child: const Text('Soal 3 - Form Login'),
            ),
          ],
        ),
      ),
    );
  }
}
