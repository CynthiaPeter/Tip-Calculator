import 'package:flutter/material.dart';
import 'package:tip_calculator/Ui/calculatorpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      body: Center(
          child: SizedBox.fromSize(
        size: Size(200, 56), // button width and height
        child: ClipRect(
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(20),
            color: Colors.brown[700], // button color
            child: InkWell(
              splashColor: Colors.brown, // splash color
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalculatorUi()),
                );
              }, // button pressed
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // icon
                    Text(
                      "Let\'s Tip",
                      style: TextStyle(fontSize: 24),
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 30,
                    ), // text
                  ],
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}

// RaisedButton.icon(
//           onPressed: () {},
//           icon: Icons.chevron_right,
//           label: Text('Let\'s Tip'),
//         ),
