import 'package:bloc_pattern_kullanimi/data/repo/matematik_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int> {
  AnasayfaCubit() : super(0);

  var mrepo = MatematikRepository();

  void toplamaYap(String alinanSayi1,String alinanSayi2){
    emit(mrepo.toplamaYap(alinanSayi1, alinanSayi2));
  }

  void capmaYap(String alinanSayi1,String alinanSayi2){
    emit(mrepo.capmaYap(alinanSayi1, alinanSayi2));
  }

  void cikartmaYap(String alinanSayi1, String alinanSSayi2){
    emit(mrepo.cikartmaYap(alinanSayi1,alinanSSayi2));
  }
}
