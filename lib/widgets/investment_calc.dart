import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class InvestmentCalculatorWidget extends StatefulWidget {
  @override
  State<InvestmentCalculatorWidget> createState() =>
      _InvestmentCalculatorWidgetState();
}

double updateInvestmentAmount(double currentAmount, bool increment,
    {bool exponential = false}) {
  double incrementAmount = exponential ? 10000.0 : 1000.0;

  if (!increment && currentAmount <= 10000) {
    incrementAmount = 1000.0;
  }

  double newAmount = increment
      ? currentAmount + incrementAmount
      : currentAmount - incrementAmount;

  // Ensure the amount does not go below the minimum of $250
  return newAmount < 250 ? 250 : newAmount;
}

class _InvestmentCalculatorWidgetState
    extends State<InvestmentCalculatorWidget> {
  double investmentAmount = 10000.0;
  double annualYieldToMaturity = 0.0681; // 6.81% for example
  int term = 3; // Default term is 3 years

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth < 600 ? 16 : 20;
    double containerHeight = screenWidth < 600 ? 350 : 350;
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Investment Calculator',
              style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(12),
            ),
             height: containerHeight,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Investment Amount',
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 12),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              investmentAmount = updateInvestmentAmount(
                                  investmentAmount, false,
                                  exponential: false);
                            });
                          },
                          onDoubleTap: () {
                            setState(() {
                              investmentAmount = updateInvestmentAmount(
                                  investmentAmount, false,
                                  exponential: true);
                            });
                          },
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: IconButton(
                              color: Colors.black,
                              onPressed: () {},
                              icon: Icon(Icons.remove),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '\$${investmentAmount.toStringAsFixed(2)}',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 12),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              investmentAmount = updateInvestmentAmount(
                                  investmentAmount, true,
                                  exponential: false);
                            });
                          },
                          onDoubleTap: () {
                            setState(() {
                              investmentAmount = updateInvestmentAmount(
                                  investmentAmount, true,
                                  exponential: true);
                            });
                          },
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xFFFFEDF7EB),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${(annualYieldToMaturity * 100).toStringAsFixed(2)}% YTM',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          side: BorderSide(
                            color: term == 3
                                ? Colors.blue[900]!
                                : Color(0xFFFF1C2C56),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            term = 3;
                          });
                        },
                        child: Text(
                          '3 Year Term',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          side: BorderSide(
                            color: term == 5
                                ? Colors.blue[900]!
                                : Color(0xFFFF1C2C56),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            term = 5;
                          });
                        },
                        child: Text(
                          '5 Year Term',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Capital At Maturity',
                        style: TextStyle(
                          color: Color(0xFFFF77809A),
                        ),
                      ),
                      Text(
                        'Total Interest',
                        style: TextStyle(
                          color: Color(0xFFFF77809A),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$10,681',
                        style: TextStyle(
                          color: Color(0xFFFF1C2C56),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '\$681',
                        style: TextStyle(
                          color: Color(0xFFFF1C2C56),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Annual Interest',
                        style: TextStyle(
                          color: Color(0xFFFF77809A),
                        ),
                      ),
                      Text(
                        'Average Maturity Date',
                        style: TextStyle(
                          color: Color(0xFFFF77809A),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$10,681',
                        style: TextStyle(
                          color: Color(0xFFFF1C2C56),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '\$681',
                        style: TextStyle(
                          color: Color(0xFFFF1C2C56),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Bonds',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFFFF1C2C56),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/image 13.png'),
                      backgroundColor: Colors.white,
                      radius: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Netflix INC',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          'BBB',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xFFFF77809A),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 65,
                    ),
                    Text(
                      '5.37% APY',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/Group 427319733.png'),
                      backgroundColor: Colors.white,
                      radius: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ford Motor LLC',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          'BB+',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xFFFF77809A),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 65,
                    ),
                    Text(
                      '7.71% APY',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/Group 427319732.png'),
                      backgroundColor: Colors.white,
                      radius: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Apple INC',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          'AA+',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xFFFF77809A),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 65,
                    ),
                    Text(
                      '4.85% APY',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/Group 427319734.png'),
                      backgroundColor: Colors.white,
                      radius: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Morgan Stanley',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          'A-',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xFFFF77809A),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 65,
                    ),
                    Text(
                      '6.27% APY',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
