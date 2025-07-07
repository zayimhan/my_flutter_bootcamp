import 'dart:math';

import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfController = TextEditingController();
  String alinanVeri = "";
  String resimAdi = "baklava.png";
  bool switchKontrol = false;
  bool checkboxKontrol = true;
  int radioDeger = 0;
  bool progressControl = false;
  double ilerleme = 30.0;
  var tfSaat = TextEditingController();
  var tfTarih = TextEditingController();
  var ulkelerListesi = <String>[];
  String secilenUlke = "Türkiye";

  void initState() {
    super.initState();
    ulkelerListesi.add("Türkiye");
    ulkelerListesi.add("İtalya");
    ulkelerListesi.add("Japonya");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView( // sayfayı kaydırabilme özelliği
        child: Center(
          child: Column(
            children: [
              Text(alinanVeri),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: tfController,
                  decoration: const InputDecoration(hintText: "veri"),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    alinanVeri = tfController.text;
                    tfController.text = "";
                  });
                },
                child: const Text("veriyi al"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resimAdi = "kofte.png";
                      });
                    },
                    child: const Text("Resim 1"),
                  ),
                  //Image.asset("resimler/$resimAdi"),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Image.network(
                      "http://kasimadalan.pe.hu/yemekler/resimler/$resimAdi",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resimAdi = "ayran.png";
                      });
                    },
                    child: const Text("Resim 2"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 200,
                    child: SwitchListTile(
                      title: Text("Dart", style: TextStyle(color: Colors.white),),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: switchKontrol,
                      onChanged: (veri) {
                        setState(() {
                          switchKontrol = veri;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 150,
                    child: CheckboxListTile(
                      title: Text(
                        "Flutter", style: TextStyle(color: Colors.white),),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: checkboxKontrol,
                      onChanged: (veri) {
                        setState(() {
                          checkboxKontrol = veri!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 200,
                    child: RadioListTile(
                      title: Text(
                        "Barselona", style: TextStyle(color: Colors.white),),
                      value: 1,
                      groupValue: radioDeger,
                      onChanged: (veri) {
                        setState(() {
                          radioDeger = veri!;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 150,
                    child: RadioListTile(
                      title: Text(
                        "Real Madrid", style: TextStyle(color: Colors.white),),
                      value: 2,
                      groupValue: radioDeger,
                      onChanged: (veri) {
                        setState(() {
                          radioDeger = veri!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        progressControl = true;
                      });
                    },
                    child: const Text("Başla"),
                  ),
                  Visibility(visible: progressControl,
                      child: const CircularProgressIndicator()),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        progressControl = false;
                      });
                    },
                    child: const Text("Dur"),
                  ),
                ],
              ),
        
              Text(ilerleme.toInt().toString(),style: TextStyle(color: Colors.pink),),
              Slider(max: 100.0, min: 0.0, value: ilerleme, onChanged: (veri) {
                setState(() {
                  ilerleme = veri;
                });
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 120,
                    child: TextField(
                      controller: tfSaat,
                      decoration: const InputDecoration(hintText: "Saat"),
                    ),
                  ),
                  IconButton(onPressed: (){
                    showTimePicker(context: context, initialTime: TimeOfDay.fromDateTime(DateTime.now()))
                    .then((value){
                      tfSaat.text = "${value!.hour} : ${value!.minute}";
                    });
                  }, icon: Icon(Icons.access_time)),
                  SizedBox(width: 120,
                    child: TextField(
                      controller: tfTarih,
                      decoration: const InputDecoration(hintText: "Tarih"),
                    ),
                  ),
                  IconButton(onPressed: (){
                    showDatePicker(context: context,initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2050))
                    .then((value){
                      tfTarih.text = "${value!.day} / ${value.month} / ${value.year}";
                    });
                  }, icon: Icon(Icons.date_range)),
                ],
              ),
              DropdownButton(
                  value: secilenUlke,
                  icon: const Icon(Icons.arrow_drop_down),
                  items: ulkelerListesi.map((ulke){
                    return DropdownMenuItem(value: ulke, child: Text(ulke),);
                  }).toList(),
                  onChanged: (veri){
                    setState(() {
                      secilenUlke = veri!;
                    });
                  }),
              GestureDetector(
                  onTap: (){
                    print("container tek tıklandı");
                  },
                  onDoubleTap: (){
                    print("container çift tıklandı");
                  },
                  onLongPress: (){
                    print("container uzerine uzun basıldı");
                  } ,
                  child: Container(width: 200,height: 200,color: Colors.red)),//containera alt+enter ile ----> ozellik
        
              ElevatedButton(
                onPressed: () {
                  print("Switch durum : $switchKontrol \n"
                      "Checkbox durum: $checkboxKontrol");
                  print("radio durum : $radioDeger");
                  print("slider durum : ${ilerleme.toInt()}");
                  print("son ulke : $secilenUlke");
                },
                child: const Text("Göster"),
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
