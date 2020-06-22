import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Components/BottomBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:feelsgood/Components/CategoriesCard.dart';
import 'package:feelsgood/Components/ItemsCard.dart';
import 'package:feelsgood/Components/OfferCard.dart';
import 'package:feelsgood/Components/Separator.dart';
import 'package:feelsgood/bloc/Category.dart';
import 'package:feelsgood/bloc/Categorybloc.dart';
import 'package:feelsgood/bloc/Item.dart';
import 'package:feelsgood/bloc/Itembloc.dart';
import 'package:feelsgood/bloc/Offer.dart';
import 'package:feelsgood/bloc/Offerbloc.dart';

class SupermarketScreen extends StatefulWidget {
  static const String id = '/supermarket';

  @override
  _SupermarketScreenState createState() => _SupermarketScreenState();
}

class _SupermarketScreenState extends State<SupermarketScreen> {
  final CategoryBloc _categoryBloc = CategoryBloc();
  final ItemBloc _itemBloc = ItemBloc();
  final OfferBloc _offerBloc = OfferBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF16540D),
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 14, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.locationArrow,
                            size: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              "2 KM",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "PANDA Supermarket",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Old  Bus Stand",
                        style: TextStyle(color: Colors.black54, fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: IntrinsicHeight(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.access_time,
                                color: Colors.black54,
                              ),
                              Text(
                                "10 AM - 5 PM",
                                style: TextStyle(color: Colors.black54),
                              ),
                              VerticalDivider(
                                color: Colors.black54,
                                thickness: 2,
                                width: 20,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.black54,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(color: Colors.black54),
                              ),
                              VerticalDivider(
                                color: Colors.black54,
                                thickness: 2,
                                width: 20,
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    "Same day",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                  ),
                                  Text(
                                    "delivery",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Image(
                                  image: AssetImage("images/deliver.png"),
                                  color: Colors.black54,
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 3,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.locationArrow,
                                    size: 13,
                                  ),
                                  Text(
                                    "2 KM",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              "See on Map",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 170,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage("images/photo.jpg")),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 8),
                  child: DotsIndicator(
                    dotsCount: 4,
                    position: 0,
                    decorator: DotsDecorator(
                      color: Colors.black54,
                      activeColor: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Separator(
                text: "Categories",
              ),
            ),
            Container(
              height: 100,
              child: StreamBuilder<List<Category>>(
                stream: _categoryBloc.categoryListStream,
                builder: (BuildContext context,
                    AsyncSnapshot<List<Category>> snapshot) {
                  if (snapshot.hasError) {
                    print(snapshot.error);
                  }
                  return snapshot.hasData
                      ? ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            return CategoriesCard(
                              category: snapshot.data[index],
                            );
                          })
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                },
              ),
            ),
            Separator(text: "Fresh New Items"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Container(
                height: 160,
                child: StreamBuilder<List<Item>>(
                  stream: _itemBloc.itemListStream,
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Item>> snapshot) {
                    if (snapshot.hasError) {
                      print(snapshot.error);
                    }
                    return snapshot.hasData
                        ? ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              return ItemsCard(
                                item: snapshot.data[index],
                              );
                            })
                        : Center(
                            child: CircularProgressIndicator(),
                          );
                  },
                ),
              ),
            ),
            Separator(text: "Most Recent Search"),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 170,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage("images/offer.jpg")),
                ),
              ),
            ),
            Separator(
              text: "Our Offers",
            ),
            Container(
              height: 180,
              child: StreamBuilder<List<Offer>>(
                stream: _offerBloc.itemListStream,
                builder: (BuildContext context,
                    AsyncSnapshot<List<Offer>> snapshot) {
                  if (snapshot.hasError) {
                    print(snapshot.error);
                  }
                  return snapshot.hasData
                      ? ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            return OfferCard(
                              offer: snapshot.data[index],
                            );
                          })
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
