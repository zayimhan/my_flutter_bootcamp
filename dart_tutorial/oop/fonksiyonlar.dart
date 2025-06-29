class Fonksiyonlar{

  void selamla(){
    String sonuc = "merhaba zayim";
    print(sonuc);
  }

  String selamla2(){
    return "merhaba zayim";
  }

  String selamla3(String isim){
    String sonuc = "merhaba $isim";
    return sonuc;
  }

  int toplama(int sayi1, int sayi2){
    int sonuc = sayi1 + sayi2;
    return sonuc;
  }
}

void main(){

  var f = Fonksiyonlar();

  f.selamla();
  print(f.selamla2());

  print(f.selamla3("mustafa"));

  print(f.toplama(2, -5));
}