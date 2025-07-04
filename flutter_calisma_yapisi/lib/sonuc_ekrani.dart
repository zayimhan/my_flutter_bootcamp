import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calisma_yapisi/anasayfa.dart';
import 'package:flutter_calisma_yapisi/oyun_ekrani.dart';

class SonucEkrani extends StatefulWidget {
  const SonucEkrani({super.key});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("sonuc ekrani")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                //bir onceki sayfaya donuyor
              },
              child: const Text("geri don"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: const Text("anasayfaya geri don"),
            ),

          ],
        ),
      ),
    );
  }
}
