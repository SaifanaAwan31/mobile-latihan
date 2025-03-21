import 'package:flutter/material.dart';

class Soal2Stack extends StatelessWidget {
  const Soal2Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50], // Background biru muda
      appBar: AppBar(
        title: const Text('uji profil'),
        backgroundColor: Colors.lightBlue, // AppBar biru muda
      ),
      body: Center(
        child: Stack(
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.lightBlue, // Icon edit biru muda
                child: const Icon(Icons.edit, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}