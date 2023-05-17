import 'package:flutter/material.dart';

class NasiGorengScreen extends StatelessWidget {
  final List<String> menuList = [
    'Nasi Goreng Biasa',
    'Nasi Goreng Seafood',
    'Nasi Goreng Ayam',
    'Nasi Goreng Spesial',
    'Nasi Goreng Kambing'
  ];

  final Map<String, String> resepNasiGoreng = {
    'Nasi Goreng Biasa': 'Resep nasi goreng biasa''3 siung bawang putih,2 siung bawang merah,1 buah cabe besar,5 buah cabe rawit (bisa ditambahkan jika suka pedas),GaramTerasi (jika suka)Nasi putihBahan tambahan :1 butir telur',
    'Nasi Goreng Seafood': 'Resep nasi goreng seafood''3 siung bawang putih,2 siung bawang merah,1 buah cabe besar,5 buah cabe rawit (bisa ditambahkan jika suka pedas),GaramTerasi (jika suka)Nasi putihBahan tambahan :1 butir telur,potongan daging seafod seperti udang,kerang',
    'Nasi Goreng Ayam': 'Resep nasi goreng ayam''3 siung bawang putih,2 siung bawang merah,1 buah cabe besar,5 buah cabe rawit (bisa ditambahkan jika suka pedas),GaramTerasi (jika suka)Nasi putihBahan tambahan :1 butir telur potongan daging ayam',
    'Nasi Goreng Spesial': 'Resep nasi goreng spesial''3 siung bawang putih,2 siung bawang merah,1 buah cabe besar,5 buah cabe rawit (bisa ditambahkan jika suka pedas),GaramTerasi (jika suka)Nasi putihBahan tambahan :1 butir telur,potongan daging kambing,sosis,udang,kerang',
    'Nasi Goreng Kambing': 'Resep nasi goreng kambing''3 siung bawang putih,2 siung bawang merah,1 buah cabe besar,5 buah cabe rawit (bisa ditambahkan jika suka pedas),GaramTerasi (jika suka)Nasi putihBahan tambahan :1 butir telur, potongan daging kambing',
  };

  @override
  Widget build(BuildContext context) {
    final String foodName = ModalRoute.of(context)!.settings.arguments as String;

    String description = '';
    if (foodName == 'Nasi Goreng') {
      description = 'Nasi Goreng adalah salah satu makanan khas Indonesia yang terkenal di seluruh dunia. Terbuat dari nasi yang digoreng bersama bumbu dan bahan tambahan seperti sayuran, daging, dan telur. Rasanya yang gurih dan sedikit pedas membuat Nasi Goreng menjadi favorit banyak orang.';
    } else {
      description = 'Deskripsi tidak tersedia.';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Makanan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              foodName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              description,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16.0),
            Text(
              'Macam Macam Nasi Goreng:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            ListView.builder(
              shrinkWrap: true,
              itemCount: menuList.length,
              itemBuilder: (BuildContext context, int index) {
                final String menu = menuList[index];
                return ListTile(
                  title: Text(menu),
                  trailing: ElevatedButton(
                    onPressed: () {
                      String resep = resepNasiGoreng[menu] ?? 'Resep tidak tersedia.';
                      _showResepDialog(context, menu, resep);
                    },
                    child: Text('Resep'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showResepDialog(BuildContext context, String menu, String resep) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Resep $menu'),
          content: Text(resep),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Tutup'),
            ),
          ],
        );
      },
    );
  }
}
