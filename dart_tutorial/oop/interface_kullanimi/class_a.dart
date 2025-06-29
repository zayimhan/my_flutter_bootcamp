import 'package:flutter_egitim/oop/interface_kullanimi/my_interface.dart';

class ClassA implements MyInterface{
  @override
  int degisken = 10 ;

  @override
  void method1() {
    // TODO: implement method1
    print("method1 calisti");
  }

  @override
  String metod2() {
    // TODO: implement metod2
    return "Method 2";
  }

}