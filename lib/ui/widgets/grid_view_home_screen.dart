import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridViewHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 2,
      primary: false,
      mainAxisSpacing: 4,
      shrinkWrap: true,
      children: <Widget>[
        _buildCard('Nina', 'Available', 1),
        _buildCard('Nina', 'Away', 2),
        _buildCard('Nina', 'Away', 3),
        _buildCard('Nina', 'Available', 4),
        _buildCard('Nina', 'Away', 5),
        _buildCard('Nina', 'Available', 6),
      ],
    );
  }
}

Widget _buildCard(String name, String status, int cardIndex) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    elevation: 7,
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 12,
        ),
        Stack(
          children: <Widget>[
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://317307-971812-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2019/09/edith-fb-post.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 42),
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: status == 'Away' ? Colors.amber : Colors.green,
                border: Border.all(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          name,
          style: GoogleFonts.quicksand(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          status,
          style: GoogleFonts.quicksand(
            fontSize: 12,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 22),
        Expanded(
          child: Container(
            width: 175,
            decoration: BoxDecoration(
              color: status == 'Away' ? Colors.grey : Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                'Request',
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
    margin: cardIndex.isEven
        ? const EdgeInsets.fromLTRB(10, 0, 25, 10)
        : const EdgeInsets.fromLTRB(25, 0, 5, 10),
  );
}
