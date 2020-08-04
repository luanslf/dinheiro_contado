import 'package:dinheirocontado/src/widgets/purchases_list_item.dart';
import 'package:flutter/material.dart';

class PurchasesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 70),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          PurchasesListItem(),
          PurchasesListItem(),
          PurchasesListItem(),
          PurchasesListItem(),
          PurchasesListItem(),
        ],
      ),
    );
  }
}
