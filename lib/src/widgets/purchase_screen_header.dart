import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PurchaseScreenHeader extends StatelessWidget {
  final blueColor = Color(0xFF4f5565);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
      padding: EdgeInsets.only(
        top: 15.0,
        //bottom: 15.0,
        left: 10.0,
        right: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: IconButton(
              onPressed: () => onWillPop(context),
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Dinheiro Contado',
              textAlign: TextAlign.start,
              style: GoogleFonts.boogaloo(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ),
          /*Container(
            padding: EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              */ /*border: Border.all(
                color: Colors.white,
              ),*/ /*
            ),
            child: Image.asset(
              'images/dinheiro.png',
              height: 30.0,
            ),
          ),*/
        ],
      ),
    );
  }

  void onWillPop(BuildContext context) {
    Navigator.pop(context);
  }
}
