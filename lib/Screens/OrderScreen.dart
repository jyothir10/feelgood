import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Styling/Constants.dart';
import 'package:feelsgood/Models/Order.dart';
import 'package:feelsgood/bloc/Orderbloc.dart';
import 'package:feelsgood/Components/OrderCard.dart';

class OrderScreen extends StatefulWidget {
  static const String id = '/order';
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final OrderBloc _orderBloc = OrderBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_arrow_left,
          color: Colors.white,
          size: 28,
        ),
        backgroundColor: kScreenColor,
        title: Text(
          "My Orders",
          style: TextStyle(color: Colors.white, fontFamily: "Open Sans"),
        ),
      ),
      body: Container(
        height: 650,
        color: Color(0xFFCBFDCB),
        child: StreamBuilder<List<Order>>(
          stream: _orderBloc.orderListStream,
          builder: (BuildContext context, AsyncSnapshot<List<Order>> snapshot) {
            if (snapshot.hasError) {
              print(snapshot.error);
            }
            return snapshot.hasData
                ? ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return OrderCard(
                        order: snapshot.data[index],
                      );
                    })
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }
}
