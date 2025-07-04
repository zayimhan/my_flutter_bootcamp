import 'package:bottom_navigation_bar/bottom_nav_kullanimi/sayfa_bir.dart';
import 'package:bottom_navigation_bar/bottom_nav_kullanimi/sayfa_iki.dart';
import 'package:bottom_navigation_bar/bottom_nav_kullanimi/sayfa_uc.dart';
import 'package:flutter/material.dart';

class BottomNavigationSayfa extends StatefulWidget {
  const BottomNavigationSayfa({super.key});

  @override
  State<BottomNavigationSayfa> createState() => _BottomNavigationSayfaState();
}

class _BottomNavigationSayfaState extends State<BottomNavigationSayfa> {
  int secilenIndex = 0;
  var sayfalar = [const SayfaBir(), const SayfaIki(), const SayfaUc()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation"),
        backgroundColor: Colors.deepPurple,
      ),
      body: sayfalar[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one_outlined),
            label: "bir",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two_outlined),
            label: "iki",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3_outlined),
            label: "uc",
          ),
        ],
        currentIndex: secilenIndex,
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,

        onTap: (index) {
          setState(() {
            secilenIndex = index;
          });
        },
      ),
    );
  }
}
