import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:feelsgood/Screens/SuperMarketCartScreen.dart';
import 'package:feelsgood/Screens/HomeScreen.dart';

int currentIndex = 0;

class BottomBar extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldkey;

  BottomBar({this.scaffoldkey});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: currentIndex,
      selectedItemColor: Color(0xFF000000),
      unselectedItemColor: Colors.black87,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.home,
            size: 27,
          ),
          title: Text(
            'HOME',
            style: TextStyle(fontSize: 12),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.search,
            size: 27,
          ),
          title: Text(
            'SEARCH',
            style: TextStyle(fontSize: 12),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.shoppingBag,
            size: 27,
          ),
          title: Text(
            'CART',
            style: TextStyle(fontSize: 12),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.bars,
            size: 27,
          ),
          title: Text(
            'MORE',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
      onTap: (index) {
        setState(() {
          if (index == 2) {
            Navigator.pushNamed(context, SuperMarketCartScreen.id);
          }
          if (index == 3) {
            widget.scaffoldkey.currentState.openEndDrawer();
          }
        });
      },
    );
  }
}
