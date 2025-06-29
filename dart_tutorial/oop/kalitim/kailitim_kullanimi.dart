import 'package:flutter_egitim/oop/kalitim/Ev.dart';
import 'package:flutter_egitim/oop/kalitim/Saray.dart';
import 'package:flutter_egitim/oop/kalitim/Villa.dart';

void main(){
  var topkapiSaray = Saray(kuleSayisi: 10, pencereSayisi: 300);
  print(topkapiSaray.pencereSayisi);

  var bogazVilla = Villa(garajVarmi: true, pencereSayisi: 50);
  print(bogazVilla.garajVarmi);
  print(bogazVilla.pencereSayisi);


  if(topkapiSaray is Saray){
    print("Saraydır");
  }else{
    print("Saray değildir");
  }

  //Downcasting
  var ev = Ev(pencereSayisi: 10);
  var saray = ev as Saray;

  //upcasting
  var s = Saray(kuleSayisi: 3,pencereSayisi: 100);
  Ev e = s;
}