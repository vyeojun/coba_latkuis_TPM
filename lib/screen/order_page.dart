import 'package:flutter/material.dart';
import '../models/menu_models.dart';

class OrderPage extends StatefulWidget {
  final MenuModel menu;

  const OrderPage({super.key, required this.menu});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

  final TextEditingController jumlahController = TextEditingController();

  int totalHarga = 0;

  void hitungTotal() {
    int jumlah = int.tryParse(jumlahController.text) ?? 0;

    setState(() {
      totalHarga = jumlah * widget.menu.harga;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Order"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            /// GAMBAR
            Image.asset(
              widget.menu.imgUrl,
              height: 180,
            ),

            const SizedBox(height: 10),

            /// NAMA MENU
            Text(
              widget.menu.nama,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            /// HARGA
            Text("Harga: Rp ${widget.menu.harga}"),

            const SizedBox(height: 20),

            /// INPUT JUMLAH
            TextField(
              controller: jumlahController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Masukkan Jumlah",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            /// BUTTON SUBMIT
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: hitungTotal,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text("Submit"),
              ),
            ),

            const SizedBox(height: 20),

            /// TOTAL HARGA
            Text(
              "Total Harga: Rp $totalHarga",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}