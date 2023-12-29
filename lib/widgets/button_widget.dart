import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    double fontSize = screenWidth < 600 ? 15 : 17;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: screenWidth < 600 ? 8 : 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFFF1C2C56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'Create Investment Account',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
