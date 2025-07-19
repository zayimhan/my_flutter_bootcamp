import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //test();
    sayacKontrol();
  }

  Future<void> sayacKontrol() async {
    var sp = await SharedPreferences.getInstance();
    sayac = sp.getInt("sayac") ?? 0;
    setState(() {
      sayac = sayac + 1;
    });

    sp.setInt("sayac", sayac);
  }

  Future<void> test() async {
    var sp = await SharedPreferences.getInstance();

    //veri kaydı
    sp.setString("ad", "ahmet");
    sp.setInt("yas", 23);
    sp.setDouble("boy", 1.78);
    sp.setBool("bekar", true);

    var arkadasListesi = <String>[];
    arkadasListesi.add("ali");
    arkadasListesi.add("ece");

    sp.setStringList("arkadasListesi", arkadasListesi);
    //veri silme
    sp.remove("ad");

    //veri okuma

    String gelenAd = sp.getString("ad") ?? "isim yok";
    int gelenYas = sp.getInt("yas") ?? 0;
    double gelenBoy = sp.getDouble("boy") ?? 0.0;
    bool gelenBekar = sp.getBool("ad") ?? false;
    print("gelen ad : $gelenAd");
    print("gelen yas : $gelenYas");
    print("gelen boy : $gelenBoy");
    print("gelen bekar : $gelenBekar");

    var gelenArkadasListesi = sp.getStringList("arkadasListesi") ?? null;

    if (gelenArkadasListesi != null) {
      for (var a in arkadasListesi) {
        print("arkadas : $a");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("shared preferences")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text("Açılış sayısı : $sayac", style: TextStyle(fontSize: 50))],
        ),
      ),
    );
  }
}
