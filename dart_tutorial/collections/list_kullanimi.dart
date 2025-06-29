void main(){
  //tanimlama
  var plakalar =[16,23,6];
  var meyveler  = <String>[];

  //veri ekleme
  meyveler.add("muz");
  meyveler.add("kiraz");
  meyveler.add("elma");
  print(meyveler);

  //guncelleme
  meyveler[1] = "yeni kiraz";
  print(meyveler);

  //insert
  meyveler.insert(1, "portakal");
  print(meyveler);

  print("boyut : ${meyveler.length}" );
  print("bos mu? : ${meyveler.isEmpty}");

  //for each
  for(var meyve in meyveler){
    print("spnuc : ${meyve}");
  }

  print(meyveler);
  var liste = meyveler.reversed.toList();
  print(liste);

  meyveler.sort();
  print(meyveler);

  meyveler.removeAt(0);
  print(meyveler);

  meyveler.clear();
  print(meyveler);
}