import 'package:flutter/material.dart';

class BaksoScreen extends StatelessWidget {
  final List<String> menuList = [
    'Bakso Urat',
    'Bakso Sapi',
    'Bakso Ayam',
    'Bakso Ikan'
  ];

  final Map<String, String> resepBakso = {
    'Bakso Urat': 'Bahan 500 gram daging sapi sengkel, tanpa dicuci, buang uratnya dan iris tipis,  150 gram urat sapi, direbus dan dipotong-potong,  1 sdm garam kasar,  1/2 sdt poly powder,  1 sdt penyedap rasa,  50 gram putih telur,  250 gram es serut,  1 siung bawang putih, haluskan  1/2 sdt merica bubuk  1/2 sdm bawang putih foreng  1/2 sdm bawang merah goreng  150 gram tepung sagu aren Bahan pelengkap bakso sapi  250 gram bihun, seduh  250 gram mi telur 5 tangkai seledri, cincang kasar,  5 batang daun bawang kecil,  5 sdm bawang merah goreng  2,5 lt kuah bakso  Sambal bakso secukupnya.',
    'Bakso Sapi': 'Bahan 500 gram daging sapi sengkel segar tanpa dicuci, buang uratnya dan iris tipis 1 sendok makan garam kasar ½ sendok teh poly powder 50 gram putih telur 225 gram es serut 1 sendok teh penyedap rasa 1 siung bawang putih dihaluskan ½ sendok teh merica bubuk ½ sendok makan bawang putih goreng ½ sendok makan bawang merah goreng 100 gram tepung sagu aren.',
    'Bakso Ayam': 'Bahan 300 gram daging ayam, haluskan 150 gram kulit ayam, potong dadu 1/2 sdt baking powder 75 gram tepung tapioka 1 sdt garam 1/2 sdt merica bubuk 1 butir putih telur 4 siung bawang putih, haluskan 200 gram es serut Bahan kuah 600 ml air kaldu 1 sdt garam 1/4 sdt merica bubuk 1 batang seledri 3 siung bawang putih haluskan Baca juga: Resep Kaldu Sapi untuk Tambahan Rasa dan Gizi Aneka Masakan Bahan pelengkap Mi telur Daun bawang Bawang goreng Saus tomat Sambal.',
    'Bakso Ikan': 'bahan-bahan yang diperlukan:500 gr daging ikan tenggiri,4 siung bawang putih,3 sdm tepung tapioka atau tepung sagu,Dua butir telur ayam, ambil putihnya saja,2 sdm gula pasir,Garam dan merica bubuk secukupnya,Air bersih secukupnya,Es batu yang sudah diserut.',
  };

  @override
  Widget build(BuildContext context) {
    final String foodName = ModalRoute.of(context)!.settings.arguments as String;

    String description = '';
    if (foodName == 'Bakso') {
      description = 'Bakso adalah salah satu makanan favorit di Indonesia. Terbuat dari adonan daging yang digiling halus, biasanya daging sapi atau ayam, yang dicampur dengan tepung tapioka dan rempah-rempah. Bakso disajikan dalam kuah kaldu panas dengan tambahan mie, tahu, bihun, atau sayuran. Rasanya yang gurih dan kenyal membuat Bakso menjadi hidangan yang digemari banyak orang.';
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
              'Macam-Macam Bakso:',
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
                      String resep = resepBakso[menu] ?? 'Resep tidak tersedia.';
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
