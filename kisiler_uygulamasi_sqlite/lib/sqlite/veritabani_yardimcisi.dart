import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class VeriTabaniYardimcisi {
  static final String veritabanAdi = "rehber.sqlite";

  static Future<Database> veritabaniErisim() async {
    String veritabaniYolu = join(await getDatabasesPath(), veritabanAdi);

    if (await databaseExists(veritabaniYolu)) {
      print("veritabani zaten var kopyalamaya gerek yok");
    } else {
      ByteData data = await rootBundle.load("veritabani/$veritabanAdi");
      List<int> bytes = data.buffer.asUint8List(
        data.offsetInBytes,
        data.lengthInBytes,
      );
      await File(veritabaniYolu).writeAsBytes(bytes, flush: true);
      print("veritabani kopyalandı");
    }

    return openDatabase(veritabaniYolu);
  }
}
