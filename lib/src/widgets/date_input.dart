import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart';

class DateInput extends StatelessWidget {
  final String labelText;
  final DateTime currentDate = DateTime.now();
  final blueColor = Color(0xFF4f5565);

  DateInput({
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectDate(context),
      child: InputDecorator(
        decoration: InputDecoration.collapsed(hintText: ''),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              DateFormat.yMMMd('pt_BR').format(currentDate),
              //DateFormat.yMMMd().format(currentDate),
              style: GoogleFonts.boogaloo(
                fontSize: 20.0,
                color: blueColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5.0),
              child: Icon(
                Icons.calendar_today,
                color: blueColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970, 8),
        lastDate: DateTime(2101),
        builder: (context, child) {
          return Theme(
            data: ThemeData.dark(),
            child: child,
          );
        });

    if (picked != null && picked != currentDate) {}
  }
}
