import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenHeader extends StatelessWidget {
  final blueColor = Color(0xFF4f5565);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 20.0),
      padding: EdgeInsets.only(
        top: 20.0,
        bottom: 100.0,
        left: 10.0,
        right: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/dinheiro.png',
                    height: 30.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Dinheiro Contado',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.boogaloo(
                      color: blueColor,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(
                Icons.info_outline,
                color: blueColor,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
