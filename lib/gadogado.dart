import 'package:flutter/material.dart';

class GadoGadoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String foodName = ModalRoute.of(context)!.settings.arguments as String;

    String description = '';
    if (foodName == 'Gado-gado') {
      description = 'Gado-gado adalah salah satu makanan khas Indonesia yang terdiri dari campuran sayuran rebus seperti kubis, tauge, kentang, bayam, dan lainnya. Dalam penyajiannya, gado-gado biasanya dilengkapi dengan tahu, tempe, telur rebus, dan lontong. Semua bahan ini kemudian disiram dengan bumbu kacang yang kental dan gurih. Gado-gado memiliki rasa yang segar, gurih, dan lezat.';
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
              child: Text('Resep Gado-gado'),
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
          title: Text('Resep Gado-gado'),
          content: Text('Bahan:5 buah lontong, potong-potong 1/4 daun selada, cuci bersih 1/4 tauge, seduh air panas 5 lembar daun kol, iris dan rebus 1 ikat kacang ,4 buah kentang, rebus 6 buah telur, rebus 2 buah timun, iris-iris 2 buah wortel, iris korek api dan rebus 6 buah telur, rebus 1 papan tempe, goreng 3 buah tahu putih, goreng 4 buah tomat, Bahan bumbu kacang: 500 gr kacang tanah, goreng 20 siung bawang putih, goreng 5 buah cabai merah besar, goreng 5 buah cabai merah keriting 150 gr gula merah, sisir 8 buah asam Jawa 2 sdt terasi, bakar/goreng 4 sdt garam 5-6 sdm gula pasir 1200 ml santan Pelengkap: Bawang goreng Emping atau kerupuk.'),
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
