import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Components/FruitsCard.dart';
import 'package:feelsgood/Styling/ClippingClass.dart';
import 'package:feelsgood/Models/Fruits.dart';
import 'package:feelsgood/bloc/Fruitbloc.dart';

class FruitsScreen extends StatefulWidget {
  @override
  _FruitsScreenState createState() => _FruitsScreenState();
}

class _FruitsScreenState extends State<FruitsScreen> {
  FruitBloc _fruitBloc = FruitBloc();
  @override
  void dispose() {
    super.dispose();
    _fruitBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StreamBuilder<List<Fruit>>(
          stream: _fruitBloc.fruitsListStream,
          builder: (BuildContext context, AsyncSnapshot<List<Fruit>> snapshot) {
            if (snapshot.hasError) {
              print(snapshot.error);
            }
            return snapshot.hasData
                ? GridView.builder(
                    primary: false,
                    itemCount: snapshot.data.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 23,
                        childAspectRatio: 0.8),
                    itemBuilder: (BuildContext context, int index) {
                      return FruitsCard(
                        fruit: snapshot.data[index],
                        isPressed: () {
                          setState(() {
                            if (snapshot.data[index].isPressed == false) {
                              snapshot.data[index].isPressed = true;
                            } else {
                              snapshot.data[index].isPressed = false;
                            }
                          });
                        },
                      );
                    })
                : Center(
                    child: CircularProgressIndicator(),
                  );
          }),
    );
  }
}
