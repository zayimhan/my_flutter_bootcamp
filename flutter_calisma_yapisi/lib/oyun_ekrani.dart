import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calisma_yapisi/kisiler.dart';
import 'package:flutter_calisma_yapisi/sonuc_ekrani.dart';

class OyunEkrani extends StatefulWidget {
  Kisiler kisi;


  OyunEkrani({required this.kisi});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {

  /*Future<bool> geriDonusTusu(BuildContext context) async{
    print("navigation geri tusu secildi");
    return true;
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("oyun ekrani"),
          leading: IconButton(onPressed: (){
            print("appBar GERİ TUSU SECİLDİ");
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back_ios_new)),),
      body: /*WillPopScope(
        onWillPop: () => geriDonusTusu(context),*/
        PopScope(
        canPop: true,
        onPopInvoked: (canPopState){
          print("navigation geri tusu calisti");
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("${widget.kisi.ad} - ${widget.kisi.yas} - ${widget.kisi.boy} - ${widget.kisi.bekar}"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement( // kendini stack e eklemez boylece sonuc
                    //ekranından geri don e basıldığında anasayfaya doner
                    context,
                    MaterialPageRoute(builder: (context) => const SonucEkrani()),
                  );
                },
                child: const Text("bitti"),
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
