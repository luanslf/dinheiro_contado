import 'package:flutter/material.dart';

class ProductsList extends StatelessWidget {
  final List<String> items = [
    'um',
    'dois',
    'tres',
    'quatro',
    'cinco',
  ];

  @override
  Widget build(BuildContext context) {
    return SliverAnimatedList(
      itemBuilder: (context, index, animation) {
        return buildPurchaseItem(items[index], animation);
      },
    );
  }

  Widget buildPurchaseItem(String item, Animation animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        child: ListTile(
          title: Text(
            item,
          ),
        ),
      ),
    );
  }
}
