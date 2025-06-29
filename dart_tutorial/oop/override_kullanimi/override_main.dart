import 'package:flutter_egitim/oop/override_kullanimi/Hayvan.dart';
import 'package:flutter_egitim/oop/override_kullanimi/Kedi.dart';
import 'package:flutter_egitim/oop/override_kullanimi/Kopek.dart';
import 'package:flutter_egitim/oop/override_kullanimi/Memeli.dart';

void main(){

  var hayvan = Hayvan();
  var memeli = Memeli();
  var kedi = Kedi();
  var kopek = Kopek();


  hayvan.sesCikar();
  memeli.sesCikar();
  kedi.sesCikar();
  kopek.sesCikar();
}