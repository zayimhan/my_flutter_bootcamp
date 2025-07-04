import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KullaniciEtkilesimiSayfa extends StatefulWidget {
  const KullaniciEtkilesimiSayfa({super.key});

  @override
  State<KullaniciEtkilesimiSayfa> createState() =>
      _KullaniciEtkilesimiSayfaState();
}

class _KullaniciEtkilesimiSayfaState extends State<KullaniciEtkilesimiSayfa> {
  var tfControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("kullanıcı etkileşimi")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("silmek istiyor musunuz"),
                    action: SnackBarAction(
                      label: "evet",
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: const Text("silindi")),
                        );
                      },
                    ),
                  ),
                );
              },
              child: const Text("Snackbar"),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text(
                      "silmek istiyor musunuz",
                      style: TextStyle(color: Colors.indigoAccent),
                    ),
                    backgroundColor: Colors.white,
                    action: SnackBarAction(
                      label: "evet",
                      textColor: Colors.red,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text(
                              "silindi",
                              style: TextStyle(color: Colors.indigoAccent),
                            ),
                            backgroundColor: Colors.white,
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
              child: const Text("Snackbar(özel)"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("baslik"),
                      content: const Text("içerik"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("iptal"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("tamam"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text("alert"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("kayit islemi"),
                      content: TextField(
                        controller: tfControl,
                        decoration: InputDecoration(hintText: "veri"),
                      ),
                      backgroundColor: Colors.grey,
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("iptal",style: TextStyle(color: Colors.black),),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            print("alınan veri ${tfControl.text}");
                            tfControl.text = "";
                          },
                          child: const Text("kaydet",style: TextStyle(color: Colors.black),
                        ),)
                      ],
                    );
                  },
                );
              },
              child: const Text("alert(özel)"),
            ),
          ],
        ),
      ),
    );
  }
}
