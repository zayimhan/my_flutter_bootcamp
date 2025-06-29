Future<void> main() async{
  print("verilerin alinmasi bekleniyor");
  var veri = await veritabanindanVeriAl();
  print("alinan veri : $veri");
}

Future<String> veritabanindanVeriAl() async{
  for(var i = 1;i<6;i++){
    Future.delayed(Duration(seconds: i), () =>print("veri miktari : %${i*20}"));
  }
  return Future.delayed(Duration(seconds: 5), () =>"merhaba");
}