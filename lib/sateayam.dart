import 'package:flutter/material.dart';

class SateAyamScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String foodName = ModalRoute.of(context)!.settings.arguments as String;

    String description = '';
    if (foodName == 'Sate Ayam') {
      description = 'Sate Ayam adalah makanan yang terkenal di Indonesia. Terbuat dari potongan daging ayam yang ditusuk dengan tusukan bambu, kemudian dipanggang di atas bara api. Sate Ayam biasanya disajikan dengan bumbu kacang yang kaya rasa dan nasi putih. Rasanya yang gurih, manis, dan sedikit pedas membuat Sate Ayam menjadi hidangan yang lezat dan populer di seluruh negeri.';
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
            ElevatedButton(
              onPressed: () {
                _showResepDialog(context);
              },
              child: Text('Resep Sate Ayam'),
            ),
          ],
        ),
      ),
    );
  }

  void _showResepDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Resep Sate Ayam'),
          content: Text(' Bahan: 500 ml air bersih 250 gram daging ayam kampung 1 kg kacang tanah Minyak goreng secukupnya 250 gram gula jawa 250 gram kecap manis Garam secukupnya 5 siung bawang putih 6 siung bawang merah Daun jeruk secukupnya  Air jeruk nipis secukupnya 1 buah tomat secukupnya  Merica secukupnya 1 batang daun bawang  3 batang daun seledri.'),
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
