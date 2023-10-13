// ignore_for_file: prefer_const_constructors, annotate_overrides, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basit ToDo Uygulaması",
      home:  Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo Uygulaması"),
      ),
      body: AnaEkran(),
    );
  }
}


class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});
   @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  @override


  TextEditingController t1 = TextEditingController();
  List alisverisListesi = [];
  
  elemanEkle()
  { setState(() {
      alisverisListesi.add(t1.text);
      t1.clear();
  });  
  }
   
  elemanCikar()
  {setState(() {
      alisverisListesi.remove(t1.text);
      t1.clear();
  });
  }


  Widget build(BuildContext context) {
   return Container(
      child: Column(children: <Widget>[
      Flexible(
        child: ListView.builder(
          itemCount: alisverisListesi.length,
          itemBuilder: (context , indexnumarasi) => ListTile(
            subtitle: Text("Marketten Alınacaklar"),
            title: Text(alisverisListesi[indexnumarasi]),
          ),
        ),
      ),
      TextField( 
        controller: t1,
      ),
      ElevatedButton(
        onPressed: elemanEkle, 
        child: Text("Ekle"),
      ),
      ElevatedButton(
        onPressed: elemanCikar, 
        child: Text("Çıkar"),
      ),
      ],
      ),
   );
  }
}

