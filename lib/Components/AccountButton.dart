import 'package:flutter/material.dart';
import 'package:feelsgood/Styling/Constants.dart';

class AccountButton extends StatelessWidget {
  final String text;
  AccountButton({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: 250,
        height: 50,
        child: FlatButton(
          color: kScreenColor,
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Open Sans",
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
