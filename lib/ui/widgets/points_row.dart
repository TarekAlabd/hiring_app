import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PointsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(25, 25, 5, 5),
              child: Text(
                'YOU HAVE',
                style: GoogleFonts.quicksand(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 40, 5, 5),
              child: Text(
                '206',
                style: GoogleFonts.quicksand(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 100,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 50,
            width: 125,
            decoration: BoxDecoration(
              color: Colors.green[100].withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Buy more',
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
