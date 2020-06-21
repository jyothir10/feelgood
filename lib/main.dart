import 'package:flutter/material.dart';
import 'package:feelsgood/Screens/SupermarketScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SupermarketScreen.id,
      routes: {
        SupermarketScreen.id: (context) => SupermarketScreen(),
      },
    );
  }
}
