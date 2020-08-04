import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int currentIndex = 0;

class BottomBar extends StatefulWidget {
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
        setState(() {});
      },
    );
  }
}
