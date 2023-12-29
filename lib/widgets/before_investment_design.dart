import 'package:flutter/material.dart';

class BeforeInvestmentDesign extends StatelessWidget {
  const BeforeInvestmentDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Average Rating',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 13,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                'Bonds',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'AA',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                '20 Companies',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Term Types',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 15,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  side: BorderSide(
                    width: 0.2,
                    color: Color(0xFFFF77809A),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  '3 Year Term',
                  style: TextStyle(
                    color: Color(0xFFFF77809A),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 17,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                side: BorderSide(
                  width: 0.2,
                  color: Color(0xFFFF77809A),
                ),
              ),
              onPressed: () {},
              child: Text(
                '5 Year Term',
                style: TextStyle(
                  color: Color(0xFFFF77809A),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}