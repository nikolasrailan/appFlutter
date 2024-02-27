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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        title: Text(
          'AULA',
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        color: Colors.redAccent,
        padding: EdgeInsets.only(top: 100.0),
        width: 550,
        height: 550,
        margin: EdgeInsets.only(top: 50),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(250),
          child: Image.network(
            'https://acdn.mitiendanube.com/stores/002/213/761/products/mesa-stone-li-0560-ambientada-21-f321046a6543f2397b16871955802629-1024-1024.jpg',
            fit: BoxFit.cover,
            height: 250,
            width: 250,
          ),
        ),
      ),
    );
  }
}
