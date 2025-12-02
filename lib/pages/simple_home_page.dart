import 'package:flutter/material.dart';
import 'package:my_first_app/pages/lihat_jurnal_page.dart';
import 'package:my_first_app/pages/buat_jurnal_page.dart';
import 'package:my_first_app/pages/akun_page.dart';
import 'package:my_first_app/pages/tentang_aplikasi_page.dart';

class SimpleHomePage extends StatefulWidget {
  const SimpleHomePage({super.key, required this.title});

  final String title;

  @override
  State<SimpleHomePage> createState() => _SimpleHomePageState();
}

class _SimpleHomePageState extends State<SimpleHomePage> {
  //menambahkan fungsi untuk navigasi
  void _openLihatJurnalPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LihatJurnalPage(title: 'Lihat Jurnal'),
      ),
    );
  }

  void _openBuatJurnalPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BuatJurnalPage(title: 'Buat Jurnal'),
      ),
    );
  }

  void _openAkunPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AkunPage(title: 'Akun')),
    );
  }

  void _openTentangAplikasiPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            const TentangAplikasiPage(title: 'Tentang Aplikasi'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // TAMPIL GAMBAR
            Image.asset(
              'assets/images/logo_kemdikbud.png',
              width: 150,
              height: 150,
            ),

            const SizedBox(height: 50),

            // Baris 1
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _openLihatJurnalPage(context),
                  child: const Text('Lihat Jurnal'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => _openBuatJurnalPage(context),
                  child: const Text('Buat Jurnal'),
                ),
              ],
            ),

            const SizedBox(height: 20), // jarak antar baris
            // LATIHAN
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _openAkunPage(context),
                  child: const Text('Akun'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => _openTentangAplikasiPage(context),
                  child: const Text('Tentang Aplikasi'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}