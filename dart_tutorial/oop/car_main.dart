import 'package:flutter_egitim/oop/car.dart';

void main(){


  var bmw = Car(renk: "mavi", hiz: 100, calisiyorMu: true);
  bmw.durdur();
  bmw.bilgiAl();

  bmw.renk = "kırmızı";
  bmw.hiz = 0;
  bmw.calisiyorMu= false;

  bmw.bilgiAl();
  
  var sahin = Car(renk: "beyaz", hiz: 0, calisiyorMu: false);
  sahin.calistir();
  sahin.hizlan(50);
  sahin.bilgiAl();
  

}
