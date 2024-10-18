import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yuan Maulvi Hafiizh"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Panggil fungsi showAlertDialog saat tombol ditekan
            showAlertDialog(
              context,
              "Alert Dialog", // Judul dialog
              "Ini adalah sebuah alert dialog. Ini juga bagian konten", // Konten dialog
            );
          },
          child: const Text("Tampilkan Alert Dialog"),
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan AlertDialog
  Future<dynamic> showAlertDialog(
      BuildContext context, String judul, String konten) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(judul),
          content: Text(konten),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(); // Menutup dialog saat tombol OK ditekan
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
