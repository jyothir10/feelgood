import 'package:flutter/material.dart';
import 'package:feelsgood/Screens/SupermarketScreen.dart';
import 'package:feelsgood/Screens/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        SupermarketScreen.id: (context) => SupermarketScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
