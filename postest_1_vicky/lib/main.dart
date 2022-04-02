import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuerryWidth = MediaQuery.of(context).size.width;
    var mediaQuerryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Postest 1 Vicky"),
      ),
      body: Center(
          child: Container(
        width: mediaQuerryWidth / 2,
        height: mediaQuerryHeight / 2,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(
            color: Colors.blue,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          "Halo Nama Saya Vicky Pranandika Wijaksana",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      )),
    );
  }
}
