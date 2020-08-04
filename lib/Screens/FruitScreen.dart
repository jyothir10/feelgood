import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FruitScreen extends StatefulWidget {
  static const String id = '/Fruits';
  @override
  _FruitScreenState createState() => _FruitScreenState();
}

class _FruitScreenState extends State<FruitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF16540D),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                elevation: 40,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image(image: AssetImage("images/fruit.png"),
                  height: 50,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Text("Avocado",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Text("₹ 80",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
