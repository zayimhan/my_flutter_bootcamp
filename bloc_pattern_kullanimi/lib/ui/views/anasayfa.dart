import 'package:bloc_pattern_kullanimi/ui/cubit/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("bloc pattern"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50,right: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<AnasayfaCubit,int>(
                builder: (context,sonuc){
                  return Text(sonuc.toString(), style: TextStyle(fontSize: 50),);
                },
              ),
              TextField(controller: tfSayi1,
                decoration: const InputDecoration(hintText: "sayi 1"),),
              TextField(controller: tfSayi2,
                decoration: const InputDecoration(hintText: "sayi 2"),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    context.read<AnasayfaCubit>().toplamaYap(tfSayi1.text, tfSayi2.text);
                  }, child: const Text("toplama")),
                  ElevatedButton(onPressed: () {
                    context.read<AnasayfaCubit>().capmaYap(tfSayi1.text, tfSayi2.text);
                  }, child: const Text("çarpma")),
                  ElevatedButton(onPressed: (){
                    context.read<AnasayfaCubit>().cikartmaYap(tfSayi1.text,tfSayi2.text);
                  }, child: const Text("cikartma"))
                ],
              )

            ],

          ),
        ),
      ),
    );
  }
}
