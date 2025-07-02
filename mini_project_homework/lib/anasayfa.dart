import 'package:flutter/material.dart';
import 'package:mini_project_homework/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var kullaniciAdi = "Zayim";
    var toplamBakiye = 3.00;
    var aktarilabilirBakiye = 1230.00;

    return Scaffold(
      backgroundColor: anaRenk,
      appBar: AppBar(
        backgroundColor: anaRenk,
        elevation: 0,
        title: Text(
          "Merhaba $kullaniciAdi!",
          style: TextStyle(color: yaziRenk, fontSize: 18),
        ),
        actions: const [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 16),
          Icon(Icons.notifications_none, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          // Bakiye kartı
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Toplam Kart Bakiyem",
                    style: TextStyle(color: Colors.white70, fontSize: 14)),
                SizedBox(height: 4),
                Text("₺${toplamBakiye.toStringAsFixed(2)}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Karta Aktarılabilir Bakiye",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 12)),
                            SizedBox(height: 4),
                            Text("₺${aktarilabilirBakiye.toStringAsFixed(2)}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ]),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: anaRenk,
                        ),
                        child: Text("Karta Aktar"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          // İşlem butonları
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _actionIcon(Icons.send, "Para Gönder"),
                _actionIcon(Icons.add, "Para Yükle"),
                _actionIcon(Icons.public, "Yurt Dışı\nTransfer"),
              ],
            ),
          ),

          SizedBox(height: 16),

          // Son Hareketler ve Menü
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: ListView(
                children: [
                  Text("Son Hareketler",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.trending_up, color: anaRenk),
                      title: Text("Yatırım İşlemleri"),
                      subtitle: Text("Kıymetli Maden Alım Satımı"),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      _quickAction(Icons.receipt, "Faturana\nYansıt"),
                      _quickAction(Icons.payment, "Ödemeler"),
                      _quickAction(Icons.videogame_asset, "Gaming Club"),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),

      // Alt menü
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: anaRenk,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana Sayfa"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: "Cüzdanım"),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "QR"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "İşlemler"),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: "Fırsatlar"),
        ],
      ),
    );
  }

  Widget _actionIcon(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(icon, color: anaRenk),
        ),
        SizedBox(height: 8),
        Text(label,
            style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
      ],
    );
  }

  Widget _quickAction(IconData icon, String label) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Icon(icon, color: anaRenk),
            SizedBox(height: 8),
            Text(label, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
