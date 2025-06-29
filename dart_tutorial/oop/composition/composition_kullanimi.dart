import 'package:flutter_egitim/oop/composition/categories.dart';
import 'package:flutter_egitim/oop/composition/filmler.dart';
import 'package:flutter_egitim/oop/composition/yonetmenler.dart';

void main(){
  var k1 = Categories(kategori_id: 1, kategori_ad: "Dram");
  var k2 = Categories(kategori_id: 2, kategori_ad: "Bilim Kurgu");

  var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino");
  var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan");

  var f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, categorie: k1, yonetmen: y1);


  print(f1.yonetmen.yonetmen_ad);

}