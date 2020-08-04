import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BreakfastScreen extends StatefulWidget {
  static const String id = '/Breakfast';
  @override
  _BreakfastScreenState createState() => _BreakfastScreenState();
}

class _BreakfastScreenState extends State<BreakfastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF87ceeb),
        elevation: 0,
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
          Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Container();
            },
            autoplay: false,
            itemCount: 3,
            pagination: SwiperPagination(),
            control: SwiperControl(),
          ),
        ],
      ),
    );
  }
}
