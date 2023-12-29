import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class indicator extends StatelessWidget {
  indicator({super.key});

  PageController _pagecontroller = PageController(viewportFraction: 0.8);

  List<String> imagesUrl = [
    "assets/Card.png",
    "assets/Card 2.png",
    "assets/Card 3.png",
    "assets/Card 4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: ListView(
          children: [
            SizedBox(
              height: 190.0,
              child: PageView.builder(
                controller: _pagecontroller,
                itemCount: imagesUrl.length,
                itemBuilder: (_, index) => Container(
                  height: 300.0,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(imagesUrl[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Column(
              children: [
                SizedBox(
                  height: 5.0,
                ),
                SmoothPageIndicator(
                  controller: _pagecontroller,
                  count: imagesUrl.length,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
