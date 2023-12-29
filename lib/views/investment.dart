import 'package:flutter/material.dart';
import 'package:testbund/widgets/before_investment_design.dart';
import 'package:testbund/widgets/button_widget.dart';
import 'package:testbund/widgets/investment_calc.dart';

class FixedIncomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double titleFontSize = screenWidth < 600 ? 20 : 22;
    double contentFontSize = screenWidth < 600 ? 14 : 16;
    double spacing = screenWidth < 600 ? 10 : 15;
    return Scaffold(
      appBar: AppBar(
        title: Text('Fixed Income'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Fixed Income Protofile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    // fontSize: 22,
                    fontSize: titleFontSize,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'A fixed income portfolio consists of bonds and other securities providing steady income and relatively lower risk.',
              ),
            ),
            SizedBox(
             height: screenWidth < 600 ? 15 : 23,
            ),
            Text(
              'Annual Yield To Maturity (YTM)',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 19,
              ),
            ),
            SizedBox(
              height: screenWidth < 600 ? 15 : 23,
            ),
            Text(
              '6.81%',
              style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: screenWidth < 600 ? 15 : 23,
            ),
            BeforeInvestmentDesign(),
            InvestmentCalculatorWidget(),
            ButtonWidget(),
          ],
        ),
      ),
    );
  }
}
