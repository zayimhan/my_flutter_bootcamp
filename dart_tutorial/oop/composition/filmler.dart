import 'package:flutter_egitim/oop/composition/categories.dart';
import 'package:flutter_egitim/oop/composition/yonetmenler.dart';

class Filmler{

  int film_id;
  String film_ad;
  int film_yil;

  Categories categorie;
  Yonetmenler yonetmen;

  Filmler({required this.film_id,
    required this.film_ad,
    required this.film_yil,
    required this.categorie,
    required this.yonetmen});

}
