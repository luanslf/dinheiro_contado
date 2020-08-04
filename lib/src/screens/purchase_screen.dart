import 'package:dinheirocontado/src/widgets/add_product_section.dart';
import 'package:dinheirocontado/src/widgets/purchase_info_footer.dart';
import 'package:dinheirocontado/src/widgets/products_list.dart';
import 'package:dinheirocontado/src/widgets/purchase_screen_header.dart';
import 'package:flutter/material.dart';

class PurchaseScreen extends StatefulWidget {
  @override
  _PurchaseScreenState createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  final blueColor = Color(0xFF4f5565);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(child: PurchaseScreenHeader()),
          AddProductSection(),
          ProductsList(),
          SliverToBoxAdapter(child: PurchaseInfoFooter()),
        ],
      ),
    );
  }
}
