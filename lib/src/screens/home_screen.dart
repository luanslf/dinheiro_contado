import 'package:dinheirocontado/src/widgets/home_screen_header.dart';
import 'package:dinheirocontado/src/widgets/new_purchase_card.dart';
import 'package:dinheirocontado/src/widgets/purchases_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final blueColor = Color(0xFF4f5565);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: blueColor,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              HomeScreenHeader(),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: PurchasesList(),
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 100.0,
            child: NewPurchaseCard(),
          ),
        ],
      ),
    );
  }
}
