import 'package:flutter/material.dart';
import 'package:uts_mrudiansyah/nasigoreng.dart';
import 'package:uts_mrudiansyah/home_screen.dart';
import 'package:uts_mrudiansyah/sateayam.dart';
import 'package:uts_mrudiansyah/bakso.dart';
import 'package:uts_mrudiansyah/ketoprak.dart';
import 'package:uts_mrudiansyah/gadogado.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pengenalan Makanan Indonesia',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        '/nasigoreng': (context) => NasiGorengScreen(),
        '/sateayam' :(context) => SateAyamScreen(),
        '/bakso' :(context) => BaksoScreen(),
        '/ketoprak' :(context) => KetoprakScreen(),
        '/gadogado' :(context) => GadoGadoScreen(),


      },
    );
  }
}
