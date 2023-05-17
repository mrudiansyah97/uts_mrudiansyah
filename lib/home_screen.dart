import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Makanan Khas Indonesia'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildFoodButton(context, 'Nasi Goreng', Icons.local_dining, '/nasigoreng'),
            buildFoodButton(context, 'Sate Ayam', Icons.local_dining, '/sateayam'),
            buildFoodButton(context, 'Bakso', Icons.local_dining, '/bakso'),
            buildFoodButton(context, 'Ketoprak', Icons.local_dining, '/ketoprak'),
            buildFoodButton(context, 'Gado-gado', Icons.local_dining, '/gadogado'),
          ],
        ),
      ),
    );
  }

  Widget buildFoodButton(
      BuildContext context, String foodName, IconData icon, String routeName) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, routeName, arguments: foodName);
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        onPrimary: Colors.white,
        padding: EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            foodName,
            style: TextStyle(fontSize: 18.0),
          ),
          Icon(icon),
        ],
      ),
    );
  }
}
