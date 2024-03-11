import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          'Cartão de Crédito',
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 350,
          child: Stack(
            children: [
              Container(
                height: 180,
                width: 330,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 43, 255, 0),
                      Color.fromARGB(255, 255, 0, 0),
                    ]),
                    borderRadius: BorderRadius.circular(15)),
              ),
              Positioned(
                top: 10,
                right: 30,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 63, 99, 255),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const Positioned(
                top: 25,
                left: 15,
                child: Text(
                  "Nikolas Railan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Positioned(
                top: 75,
                left: 15,
                child: Text(
                  "Instituto Federal do Paraná",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              const Positioned(
                top: 95,
                left: 15,
                child: Text(
                  "Campus Paranaguá",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              const Positioned(
                  bottom: 35,
                  left: 15,
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                  )),
              const Positioned(
                bottom: 35,
                left: 45,
                child: Text(
                  "+55 41 98899-8877",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
              const Positioned(
                  bottom: 35,
                  right: 160,
                  child: Icon(
                    Icons.email,
                    color: Colors.white,
                  )),
              const Positioned(
                bottom: 35,
                right: 25,
                child: Text(
                  "email123@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
