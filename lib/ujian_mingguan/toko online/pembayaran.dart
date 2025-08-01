import 'package:flutter/material.dart';
import 'package:flutter_xii/ujian_mingguan/toko%20online/layout.dart';

class PembayaranScreen extends StatefulWidget {
  final String nama;
  final String pesan;
  final String jumlah;
  final String tgl;
  final String? produk;

  const PembayaranScreen({
    super.key,
    required this.nama,
    required this.pesan,
    required this.jumlah,
    required this.produk,
    required this.tgl,
  });

  @override
  State<PembayaranScreen> createState() => _PembayaranScreenState();
}

class _PembayaranScreenState extends State<PembayaranScreen> {
  final TextEditingController _uangController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late int totalHarga;

  @override
  void initState() {
    super.initState();
    final int jumlahInt = int.tryParse(widget.jumlah) ?? 0;
    const int hargaProduk = 100000;
    totalHarga = jumlahInt * hargaProduk;
  }

  void _submitPembayaran() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text("Pembayaran Berhasil!"),
          content: Text(
            "Terima kasih sudah memesan ${widget.produk}!\n"
            "Pesanan atas nama ${widget.nama} akan segera diproses.",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .popUntil((route) => route.isFirst); // Balik ke beranda
              },
              child: Text("Tutup"),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutToko(
      title: ("Detail Pembayaran"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey.shade300)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama: ${widget.nama}", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Text("Produk: ${widget.produk ?? '-'}", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Text("Jumlah Pesanan: ${widget.jumlah}", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Text("Pesan Tambahan: ${widget.pesan}", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 16),
                  Divider(),
                  Text(
                    "Total Harga: Rp. $totalHarga",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  SizedBox(height: 20),

                  // Form Uang
                  TextFormField(
                    controller: _uangController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Masukkan Nominal Uang",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Uang tidak boleh kosong!";
                      }
                      final int? uang = int.tryParse(value);
                      if (uang == null || uang < totalHarga) {
                        return "Uang tidak cukup, minimal Rp. $totalHarga";
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _submitPembayaran,
                    child: Text("Bayar Sekarang"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
