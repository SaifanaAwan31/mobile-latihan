import 'package:flutter/material.dart';

class Soal3Layout extends StatelessWidget {
  const Soal3Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50], // Background biru muda
      appBar: AppBar(
        title: const Text('uji Login'),
        backgroundColor: Colors.lightBlue, // AppBar biru muda
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue, // Judul Login warna biru
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true, // Biar kotak input putih
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true, // Biar kotak input putih
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue, // Tombol Login biru muda
                  ),
                  child: const Text('Login'),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue, // Register biru
                  ),
                  child: const Text('Register'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
