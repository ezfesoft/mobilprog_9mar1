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
          mainAxisAlignment: .center,
          children: [
            // WIDGETLER Bu alana yazılacak
            //
            //
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
