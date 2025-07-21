import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';

class KisilerDaoRepository{
  Future<void> kaydet(String kisi_ad,String kisi_tel) async{
    print("kişi kaydet : $kisi_ad - $kisi_tel");
  }

  Future<void> guncelle(int kisi_id,String kisi_ad,String kisi_tel) async{
    print("kişiyi güncelle : $kisi_id - $kisi_ad - $kisi_tel");
  }

  Future<List<Kisiler>> kisileriYukle() async {
    var kisilerListesi = <Kisiler>[];
    var k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "1111");
    var k2 = Kisiler(kisi_id: 2, kisi_ad: "Zayim", kisi_tel: "2222");
    var k3 = Kisiler(kisi_id: 3, kisi_ad: "Hasan", kisi_tel: "3333");
    var k4 = Kisiler(kisi_id: 4, kisi_ad: "Egemen", kisi_tel: "4444");

    kisilerListesi.add(k1);
    kisilerListesi.add(k2);
    kisilerListesi.add(k3);
    kisilerListesi.add(k4);
    return kisilerListesi;
  }

  Future<List<Kisiler>> ara(String aramaKelimesi) async {
    var kisilerListesi = <Kisiler>[];
    var k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "1111");

    kisilerListesi.add(k1);
    return kisilerListesi;
  }

  Future<void> sil(int kisi_id) async {
    print("kisi sil : $kisi_id");
  }
}