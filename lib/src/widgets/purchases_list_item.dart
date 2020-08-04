import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PurchasesListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(7.0),
                    margin: EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                    ),
                    child: Icon(
                      Icons.trending_down,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '12 mai 2020',
                            style: GoogleFonts.boogaloo(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Comercial Carvalho',
                            style: GoogleFonts.boogaloo(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Text(
              'R\$ 450,00',
              style: GoogleFonts.boogaloo(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
