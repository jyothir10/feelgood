import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:feelsgood/Components/FruitsCard.dart';

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
          child: FruitsCard(),
        ),
      ),
    );
  }
}
