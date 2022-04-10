import 'package:flutter/material.dart';
import 'package:postest2_vicky_1915016185/MyContainer.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFD1E1E0),
      body: ListView(
        children: [
          Text(
            "Nama : Vicky Pranandika Wijaksana",
            textAlign: TextAlign.left,
          ),
          Text(
            "NIM : 1915016185",
            textAlign: TextAlign.left,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 350,
                margin: EdgeInsets.only(top: 61),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/laptop-asus-rog-strix-gl553.jpg"),
                  ),
                ),
              ),
              Text(
                "Laptop Asus ROG gl553vx",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF023E4A),
                ),
              ),
              Text(
                "Harga :RP 8.200.000",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 204, 86, 50),
                ),
              ),
              Text(
                "CPU : Intel Core I7 GPU Nvidia 950m RAM : 16 GB",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Pesan  : ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 17, 15, 19),
                    ),
                  ),
                  SizeContainer(size: "-"),
                  SizeContainer(size: "1"),
                  SizeContainer(isActive: true, size: "+"),
                ],
              ),
              MyButton()
            ],
          ),
        ],
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  const SizeContainer({Key? key, this.isActive = false, required this.size})
      : super(key: key);

  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF023E4A) : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: 1,
          color: Color(0xFF023E4A),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Color(0xFF023E4A),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 55,
      margin: EdgeInsets.only(top: 50),
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Pesan"),
        style: ElevatedButton.styleFrom(
            primary: Color(0xFF023E4A),
            onPrimary: Colors.white,
            padding: EdgeInsets.all(10.0),
            minimumSize: Size(200, 180)),
      ),
    );
  }
}
