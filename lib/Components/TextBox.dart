import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String hintText;
  final bool obscuretext;
  TextBox({@required this.hintText, this.obscuretext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        child: TextField(
          obscureText: obscuretext != null ? obscuretext : false,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Open Sans'),
          ),
        ),
      ),
    );
  }
}
