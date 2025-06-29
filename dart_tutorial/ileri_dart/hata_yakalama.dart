void main(){
  //1.compile error
  String x = "hello";
  //x = 10;

  //2.runtime Error
  var liste = <String>[];
  liste.add("zayim");
  liste.add("nizam");


  try {
    String isim = liste[2];
    print("gelen isim : ${isim}");
  }catch(e){
    print("listenin noyutunu astiniz");
  }
}