import 'package:dinheirocontado/src/screens/purchase_screen.dart';
import 'package:dinheirocontado/src/widgets/budget_input.dart';
import 'package:dinheirocontado/src/widgets/date_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPurchaseCard extends StatelessWidget {
  final blueColor = Color(0xFF4f5565);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: blueColor, width: 5.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: DateInput(labelText: 'Data'),
          ),
          Container(
            child: BudgetInput(),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: FlatButton(
              onPressed: () => newPurchase(context),
              padding: EdgeInsets.symmetric(vertical: 5.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: blueColor,
              child: Text(
                'Começar',
                style: GoogleFonts.boogaloo(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void newPurchase(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => PurchaseScreen(),
      ),
    );
  }
}
