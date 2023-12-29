import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:testbund/views/investment.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentIndex = 0;

  List<String> imagesUrl = [
    "assets/Card.png",
    "assets/Card 2.png",
    "assets/Card 3.png",
    "assets/Card 4.png",
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double Size = screenWidth < 600 ? 16 : 24;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/user.png'),
          onPressed: () {},
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              'Mehemet Taser',
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/notification.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Placeholder for the carousel slider
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25, // 25%,
              child: PageView(
                children: <Widget>[
                  Image.asset('assets/Card.png'),
                  Image.asset('assets/Card 2.png'),
                  Image.asset('assets/Card 3.png'),
                  Image.asset('assets/Card 4.png'),
                ],
              ),
            ),

            SmoothPageIndicator(
                controller: _pageController, // PageController
                count: 4, // Number of pages/cards
                effect: WormEffect(), // Dot effect
                onDotClicked: (index) {
                  _pageController.animateToPage(
                    index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Conditions',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Placeholder for the conditions and features grid
            GridView.count(
              crossAxisCount: screenWidth < 600 ? 2 : 4,
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(10),
              crossAxisSpacing: 6,
              mainAxisSpacing: 10,
              // crossAxisCount: 2,
              children: <Widget>[
                Image.asset('assets/Frame 427320817.png'),
                Image.asset('assets/Frame 427320816.png'),

                // Add more icons as needed
              ],
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'What You Get',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ),
            // Placeholder for the conditions and features grid
            GridView.count(
              crossAxisCount: screenWidth < 600 ? 3 : 4,
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              // crossAxisCount: 3,
              children: <Widget>[
                Image.asset('assets/Frame 427320816 (1).png'),
                Image.asset('assets/Frame 427320819.png'),
                Image.asset('assets/Frame 427320820.png'),
                Image.asset('assets/Frame 427320816 (2).png'),
                Image.asset('assets/Frame 427320819 (1).png'),
                Image.asset('assets/Frame 427320817 (1).png'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FixedIncomeScreen(),
              ),
            );
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Investment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}
