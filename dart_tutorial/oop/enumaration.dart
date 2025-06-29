import 'package:flutter_egitim/oop/konserve_boyut.dart';

void main(){

  ucretHesapla(KonserveBoyut.orta, 3);

}

void ucretHesapla(KonserveBoyut boyut,int adet){
  switch(boyut){
    case KonserveBoyut.kucuk:{
      print("Toplam maliyet : ${adet * 32} tl" );
    }
    break;
    case KonserveBoyut.orta:{
      print("Toplam maliyet : ${adet * 45} tl" );
    }
    break;
    case KonserveBoyut.buyuk:{
      print("Toplam maliyet : ${adet * 67} tl" );
    }
    break;
  }
}