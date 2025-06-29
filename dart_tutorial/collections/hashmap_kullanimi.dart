import 'dart:collection';

void main(){
  //tanımlama
  var sayilar = {"bir" : 1,"iki" : 2};
  var iller = HashMap<int,String>();

  //değer atama
  iller[16] = "bursa";
  iller[34] = "istanbul";
  iller[28] = "giresun";

  print(iller);

  String il = iller[28]!;
  print(il);

  var anahtarlar = iller.keys;

  for(var a in anahtarlar){
    print("$a -> ${iller[a]}");
  }

  iller.remove(16);
  print(iller);
}