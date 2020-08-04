import 'package:feelsgood/Screens/FruitScreen.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Screens/SupermarketScreen.dart';
import 'package:feelsgood/Screens/HomeScreen.dart';
import 'package:feelsgood/Screens/SignUpScreen.dart';
import 'package:feelsgood/Screens/LoginScreen.dart';
import 'package:feelsgood/Screens/AccountScreen.dart';
import 'package:feelsgood/Screens/SuperMarketCartScreen.dart';
import 'package:feelsgood/Screens/RestaurantCartScreen.dart';
import 'Screens/PermissionScreen.dart';
import 'Screens/OrderScreen.dart';
import 'Screens/RestaurantScreen.dart';
import 'package:feelsgood/Screens/TajScreen.dart';
import 'package:feelsgood/Screens/CuisineScreen.dart';
import 'package:feelsgood/Screens/BreakfastScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RestaurantScreen.id,
      routes: {
        SupermarketScreen.id: (context) => SupermarketScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        AccountScreen.id: (context) => AccountScreen(),
        SuperMarketCartScreen.id: (context) => SuperMarketCartScreen(),
        RestaurantCartScreen.id: (context) => RestaurantCartScreen(),
        PermissionScreen.id: (context) => PermissionScreen(),
        OrderScreen.id: (context) => OrderScreen(),
        RestaurantScreen.id: (context) => RestaurantScreen(),
        CuisineScreen.id: (context) => CuisineScreen(),
        TajScreen.id: (context) => TajScreen(),
        BreakfastScreen.id: (context) => BreakfastScreen(),
        FruitScreen.id: (context) => FruitScreen(),
      },
    );
  }
}
