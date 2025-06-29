void main() {
  //null safety - Nullable - Optional(swift)
  //null : nil(swift) : NaN

  String str = "Merhaba";

  String? mesaj = null;
  //mesaj = "merhaba";

  print("yöntem 1 : ${mesaj?.toUpperCase()}");

  //print("yöntem 2 : ${mesaj!.toUpperCase()}"); //zorla yap

  if(mesaj != null){
    print("yöntem 3 : ${mesaj.toUpperCase()}");
  }else{
    print("mesaj nulldur");
  }
}