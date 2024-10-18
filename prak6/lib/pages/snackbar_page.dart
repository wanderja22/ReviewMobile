import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yuanskuyyyy"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Membuat SnackBar dengan properti yang diinginkan
            final mySnackBar = SnackBar(
              content: const Text("Berhasil membuat SnackBar"),
              duration: const Duration(seconds: 3),
              padding: const EdgeInsets.all(10),
              backgroundColor: Colors.amberAccent,
            );

            // Menampilkan SnackBar menggunakan ScaffoldMessenger
            ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
          },
          child: Text(
            "Tampilkan SnackBar",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
