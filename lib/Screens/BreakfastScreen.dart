import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:feelsgood/Components/BottomBar.dart';
import 'package:feelsgood/Components/SwiperCard.dart';
import 'package:feelsgood/Components/Drawer.dart';

class BreakfastScreen extends StatefulWidget {
  static const String id = '/Breakfast';
  @override
  _BreakfastScreenState createState() => _BreakfastScreenState();
}

class _BreakfastScreenState extends State<BreakfastScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      bottomNavigationBar: BottomBar(
        scaffoldkey: scaffoldKey,
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF87ceeb),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            color: Color(0xFF87ceeb),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 32,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(41), topLeft: Radius.circular(41)),
            ),
          ),
          Positioned(
              left: MediaQuery.of(context).size.width / 2 - 90,
              child: Image.asset(
                "images/plate1.jpg",
                height: 150,
                width: 180,
              )),
          Positioned(
            top: 85,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return SwiperCard(
                      index: index,
                    );
                  },
                  autoplay: false,
                  itemCount: 3,
                  pagination: SwiperPagination(),
                  control: SwiperControl(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
