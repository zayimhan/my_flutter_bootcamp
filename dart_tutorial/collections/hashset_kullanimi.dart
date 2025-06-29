import 'dart:collection';

void main(){

  //Tanımlama
  var plakalar = HashSet.from([16,23,6]);
  var meyveler = HashSet<String>();

  //değer atama
  meyveler.add("kiraz");
  meyveler.add("muz");
  meyveler.add("elma");
  print(meyveler);

  meyveler.add("elma");
  print(meyveler);

  print(meyveler.elementAt(0));
}