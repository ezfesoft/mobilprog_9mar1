// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '9 Mart',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.redAccent)),
      home: const MyHomePage(title: 'Mobil Prog. 9 Mart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .start,
          children: [
            // WIDGETLER Bu alana yazılacak
            //
            //
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              color: Colors.lightBlueAccent,
              child: Image.network(
                fit: BoxFit.cover,
                "https://img.piri.net/resim/imagecrop/2017/07/20/08/41/resized_0bf36-1c6cdbc5googlemaps.jpg",
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: ListView(
                children: [
                  aracListesi(),
                  aracListesi(),
                  aracListesi(),
                  aracListesi(),
                  aracListesi(),
                ],
              ),
            ),
            //
            //
            //
            //
            // WIDGETLER Bu alana yazılacak
          ],
        ),
      ),
    );
  }
}

Widget aracListesi() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          width: 75,
          height: 75,
          child: Icon(Icons.directions_car, size: 70),
        ),
        Container(
          height: 100,
          margin: EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ekonomi",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
              ),
              Text("2 Dakika", style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
        Spacer(),
        Container(
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "150 ₺",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "300 ₺",
                style: TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
