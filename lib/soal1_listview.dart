import 'package:flutter/material.dart';

class Soal1ListView extends StatelessWidget {
  const Soal1ListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> teman = [
      'ABDILLAH ICHSAN',
      'ADHITYA PUTRA MAHENDRA',
      'AFIFAH MUTMAINAH',
      'AHMAD HIDAYAT',
      'ALDYAN SATYA FAUSTA',
      'ALIA FAJAR KHODIRIYAH',
      'ALYESA PUTRI APRILIA',
      'ANDIKA WAHYU SAPUTRA',
      'APRIL RIANTO DIRHAMMAD PRAKOSO',
      'ARYA PANDU WINAYA',
      'ASMARA NINDYAH RAHATI',
      'AZZAHRA ZUDHIKTA ARDIANSYAH',
      'BAGAS SATRIO ARDIANTO',
      'CANDRA PRATAMA PUTRA SULISTYO',
      'DEVA FEBRIAN SAPUTRA',
      'DIMAS SEPTYAN SETYO UTOMO',
      'DZAKY ANGGORO',
      'ELISABETH PUTERI SEKAR ARUM',
      'FAISAL RIDHOANTO',
      'FAWWAZ GIBRAN SAGITA AL FIRDAUSS',
      'GALUH WISMA SAFITRI',
      'GRESTIANA ISMI ROHKAYU',
      'IKHSAN NUR PURWANTO',
      'IZZUL MAALI',
      'KEVIN CHRISTIANO',
      'MIFTAKHU SUBKHAN',
      'MUHAMMAD AL FAROZI',
      'MUHAMMAD FAHLAN ARRI PRADANA',
      'MUHAMMAD NAUFAL RIZQ EFENDI',
      'MUHAMMAD ZAMHAIRI RIOGA PUTRA',
      'NABILAH HANUN FAUZIYAH',
      'NUR ELSA WIDYANINGRUM',
      'RACHMAT ARI VANDITYAS PRATAMA',
      'RANGGA VALENT AL NINO',
      'RIO MAHESA',
      'SAIFANA PASYA AWANSILA',
      'SOFIANA DEWI LARASATI',
      'USAMAH AZIZ YAHYA',
      'WAHYU DWI PRASETYO',
      'ZACKY ANNAFI NASHRU ROMADHONI'
    ];

    return Scaffold(
      backgroundColor: Colors.lightBlue[50], // Background biru muda
      appBar: AppBar(
        title: const Text('Daftar Mahasiswa'),
        backgroundColor: Colors.lightBlue, // AppBar biru muda
      ),
      body: ListView.builder(
        itemCount: teman.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.lightBlue[100], // Warna biru muda di Card
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/150?img=${(index % 70) + 1}',
                ),
              ),
              title: Text(
                teman[index],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: const Text('Online'),
              trailing: const Icon(Icons.message, color: Colors.blue),
            ),
          );
        },
      ),
    );
  }
}
