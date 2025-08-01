import 'package:flutter/material.dart';
import 'package:flutter_xii/ujian_mingguan/toko%20online/layout.dart';
import 'package:flutter_xii/ujian_mingguan/toko%20online/pembayaran.dart';

class SingleProduk extends StatefulWidget {
  final Map<String, String> data;
  const SingleProduk({super.key, required this.data});

  @override
  State<SingleProduk> createState() => _SingleProdukState();
}

class _SingleProdukState extends State<SingleProduk> {
  final _formKey = GlobalKey<FormState>();
  final _tglController = TextEditingController();
  final _namaController = TextEditingController();
  final _jumlahController = TextEditingController();
  final _pesanController = TextEditingController();

  String? _error;

  void _submit() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PembayaranScreen(
            nama: _namaController.text,
            pesan: _pesanController.text,
            tgl: _tglController.text,
            jumlah: _jumlahController.text,
            produk: widget.data['title'],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final data = widget.data; // biar ga ngetik widget.data mulu

    return LayoutToko(
      title: "Detail ${data['title']}",
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[300],
        child: Container(
          margin: const EdgeInsets.only(top: 35, left: 20, right: 20, bottom: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListView(
            padding: const EdgeInsets.all(15),
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  data['image'] ?? '',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              const Text('Deskripsi', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text(data['desc']!),
              const SizedBox(height: 10),
              Text('Stok : ${data['stok']}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              Text('Harga : Rp. ${data['price']}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              const SizedBox(height: 20),

              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Pemesanan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _namaController,
                      decoration: const InputDecoration(
                        labelText: "Nama Lengkap",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) return "Input Nama";
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _tglController,
                      decoration: const InputDecoration(
                        labelText: "Tanggal Pembayaran",
                        border: OutlineInputBorder(),
                      ),
                      readOnly: true,
                      onTap: () async {
                        final picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime.now(),
                        );
                        if (picked != null) {
                          setState(() {
                            _tglController.text =
                                "${picked.day}/${picked.month}/${picked.year}";
                          });
                        }
                      },
                      validator: (value) {
                        if (value!.isEmpty) return "Input Tanggal Lahir";
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _jumlahController,
                      decoration: const InputDecoration(
                        labelText: "Jumlah Pesanan",
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) return "Masukkan jumlah pesanan";
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _pesanController,
                      decoration: const InputDecoration(
                        labelText: "Pesan Tambahan (opsional)",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    if (_error != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(_error!, style: const TextStyle(color: Colors.red)),
                      ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: _submit,
                        child: const Text("Simpan"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
