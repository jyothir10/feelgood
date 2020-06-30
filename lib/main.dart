import 'package:flutter/material.dart';
import 'package:feelsgood/Screens/SupermarketScreen.dart';
import 'package:feelsgood/Screens/HomeScreen.dart';
import 'package:feelsgood/Screens/SignUpScreen.dart';
import 'package:feelsgood/Screens/LoginScreen.dart';
import 'package:feelsgood/Screens/AccountScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AccountScreen.id,
      routes: {
        SupermarketScreen.id: (context) => SupermarketScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        AccountScreen.id: (context) => AccountScreen(),
      },
    );
  }
}
