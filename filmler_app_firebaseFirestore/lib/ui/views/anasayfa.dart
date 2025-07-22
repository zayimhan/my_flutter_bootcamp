import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:filmler_app/data/entity/filmler.dart';
import 'package:filmler_app/ui/cubit/anasayfa_cubit.dart';
import 'package:filmler_app/ui/views/detay_sayfa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<AnasayfaCubit>().filmleriYukle();
    /*
    var f1 = {"id": "", "ad": "Django", "resim": "django.png", "fiyat": 24};
    var f2 = {
      "id": "",
      "ad": "Interstellar",
      "resim": "interstellar.png",
      "fiyat": 32,
    };
    var f3 = {
      "id": "",
      "ad": "Inception",
      "resim": "inception.png",
      "fiyat": 16,
    };
    var f4 = {
      "id": "",
      "ad": "The Hateful Eight",
      "resim": "thehatefuleight.png",
      "fiyat": 28,
    };
    var f5 = {
      "id": "",
      "ad": "The Pianist",
      "resim": "thepianist.png",
      "fiyat": 18,
    };
    var f6 = {
      "id": "",
      "ad": "Anadoluda",
      "resim": "anadoluda.png",
      "fiyat": 10,
    };

    collectionFilmler.add(f1);
    collectionFilmler.add(f2);
    collectionFilmler.add(f3);
    collectionFilmler.add(f4);
    collectionFilmler.add(f5);
    collectionFilmler.add(f6);*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("filmler")),
      body: BlocBuilder<AnasayfaCubit, List<Filmler>>(
        builder: (context, filmlerListesi) {
          if (filmlerListesi.isNotEmpty) {
            return GridView.builder(
              itemCount: filmlerListesi.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.8,
              ),
              itemBuilder: (context, indeks) {
                var film = filmlerListesi[indeks];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetaySayfa(film: film),
                      ),
                    );
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network("http://kasimadalan.pe.hu/filmler_yeni/resimler/${film.resim}"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "${film.fiyat} ₺",
                              style: TextStyle(fontSize: 24),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                print("${film.ad} sepete eklendi");
                              },
                              child: const Text("Sepet"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}
