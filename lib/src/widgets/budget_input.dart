import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:google_fonts/google_fonts.dart';

class BudgetInput extends StatelessWidget {
  final blueColor = Color(0xFF4f5565);

  final controller = MoneyMaskedTextController(
    decimalSeparator: ',',
    thousandSeparator: '.',
    initialValue: 0,
    leftSymbol: 'R\$ ',
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              textAlign: TextAlign.center,
              controller: controller,
              style: GoogleFonts.boogaloo(
                fontSize: 40.0,
                color: blueColor,
              ),
              keyboardType: TextInputType.number,
              decoration: InputDecoration.collapsed(
                hintText: '0,00',
                hintStyle: GoogleFonts.boogaloo(),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              'Qual o orçamento?',
              style: GoogleFonts.boogaloo(
                color: blueColor,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
