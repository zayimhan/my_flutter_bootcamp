import 'package:flutter/material.dart';
import 'package:flutter_calisma_yapisi/kisiler.dart';
import 'package:flutter_calisma_yapisi/oyun_ekrani.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  bool kontrol = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState() çalıştı");
    //sayfa açıldığında ilk kez bir kez çalışır
  }

  Future<int> toplama(int sayi1,int sayi2) async{
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("anasayfa")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("sonuc: $sayac"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  sayac += 1;
                });
              },
              child: const Text("tıkla"),
            ),
            ElevatedButton(
              onPressed: () {
                var kisi = Kisiler(ad: "ahmet", yas: 23, boy: 1.78, bekar: true);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OyunEkrani(kisi: kisi))
                ).then((value){
                  print("anasayfaya donuldu"); // geçişe ozel yazılır
                });
              },
              child: const Text("basla"),
            ),
            Visibility(visible:kontrol, child: Text("merhaba")),
            Text(kontrol ? "merhaba":"gule gule",style: TextStyle(color: kontrol ? Colors.blue: Colors.red),),
            ((){
              if(kontrol){
                return const Text("merhaba");
              }else{
                return const Text("gule gule");
              }
            }()),
            ElevatedButton(
              onPressed: () {
                setState(() {kontrol = true;});
              },
              child: const Text("durum 1 (true)"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {kontrol = false;});
              },
              child: const Text("durum 1 (false)"),
            ),
            FutureBuilder<int>(
              future: toplama(10, 20),
              builder: (context,snapshot){
                if(snapshot.hasError){
                  return const Text("hata olustu");
                }
                if(snapshot.hasData){
                  return Text("Sonuc: ${snapshot.data}");
                }else return const Text("sonuc yok");
              }
            ),
          ],
        ),
      ),
    );
  }
}
