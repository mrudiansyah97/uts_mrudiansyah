import 'package:flutter/material.dart';

class KetoprakScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String foodName = ModalRoute.of(context)!.settings.arguments as String;

    String description = '';
    if (foodName == 'Ketoprak') {
      description = 'Ketoprak adalah makanan khas Indonesia yang terbuat dari mi atau bihun yang disajikan dengan tahu, tauge, dan bumbu kacang. Biasanya Ketoprak disajikan dengan taburan bawang goreng dan kerupuk. Rasanya yang gurih dan kaya akan aroma bumbu kacang membuat Ketoprak menjadi hidangan yang lezat dan populer di Indonesia.';
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
              child: Text('Resep Ketoprak'),
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
          title: Text('Resep Ketoprak'),
          content: Text('Bahan 1 buah tahu cina 1/4 sdt garam 2 siung bawang putih, haluskan 100 ml air 3 buah lontong, potong 150 gram taoge, rebus sebentar 50 gram bihun, rebus matang 1 sdm kecap manis untuk penyajian 1 sdm bawang merah goreng untuk taburan 50 gram kerupuk kanji, goreng 1 buah mentimun, potong 4 bagian, iris Minyak goreng Bahan sambal kacang 125 gram kacang tanah kulit, goreng, haluskan 5 buah cabai rawit merah, rebus 3 siung bawang putih 3/4 sdt garam 4 sdm gula merah sisir halus 25 ml air asam dari 2 sdt asam jawa dan 3 sdm air 200 ml air.'),
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
