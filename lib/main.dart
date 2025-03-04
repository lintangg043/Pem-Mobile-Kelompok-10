import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("I Am Traveler"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/loc.jpg', width: 200), // Ganti dengan gambar traveler
              const SizedBox(height: 20),
              // Fakta humor
              Container(
                padding: const EdgeInsets.all(12),
                width: 300, // Menyesuaikan lebar agar sejajar dengan grid di bawah
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "💸 Traveling adalah kegiatan yang menyenangkan, tapi tidak dengan uang yang dikeluarkan!",
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              // Grid dengan 2 kolom dan 2 baris
              SizedBox(
                width: 300, // Sesuaikan lebar grid
                child: GridView.count(
                  crossAxisCount: 2, // 2 kolom
                  shrinkWrap: true, // Agar GridView tidak memenuhi seluruh layar
                  crossAxisSpacing: 10, // Jarak antar kolom
                  mainAxisSpacing: 10, // Jarak antar baris
                  children: [
                    buildTextBox("🌎 Kerja buat jalan-jalan"),
                    buildTextBox("📌 Wishlist destinasi nggak ada habisnya"),
                    buildTextBox("🎒 Packing selalu last-minute"),
                    buildTextBox("🚗 Road trip terbaik tanpa rencana"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget untuk membuat kotak teks berbentuk persegi
  Widget buildTextBox(String text) {
    return Container(
      width: 130,
      height: 130,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue [100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
