import 'package:flutter/material.dart';
import 'soal1_listview.dart';
import 'soal2_stack.dart';
import 'soal3_layout.dart';
import 'dashboard.dart'; // ✅ Import dashboard
import 'profile.dart';
import 'Login_whit_state.dart';

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
      home: Login2(),
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
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tombol ke Soal 1 ListView
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Soal1ListView()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              child: const Text('Soal 1 - ListView Teman'),
            ),
            const SizedBox(height: 20),

            // Tombol ke Soal 2 Stack
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Soal2Stack()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              child: const Text('Soal 2 - Stack Gambar Profil'),
            ),
            const SizedBox(height: 20),

            // Tombol ke Soal 3 Form Login
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Soal3Layout()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              child: const Text('Soal 3 - Form Login'),
            ),
            const SizedBox(height: 20),

            // Tombol ke Dashboard (DUMMY)
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashboardScreen(username: 'Guest'), // ✅ Fix ini
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              child: const Text('Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}
