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
        backgroundColor: Color(0XFF22222E),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                SizedBox(
                  height: 156,
                ),
                Image.asset('assets/images/tipme.png'),
                SizedBox(
                  height: 143,
                ),
                Text(
                  'This free tip calculator computes tip amounts for various situations such as different tip percentages',
                  style: TextStyle(
                    color: Color(0xffE5E5E5),
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 113,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 8,
                  height: 51,
                  child: RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CalculatorUi()),
                      );
                    },
                    child: Text(
                      "Click to Start",
                      style: TextStyle(
                        color: Color(0XFF22222E),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

// RaisedButton.icon(
//           onPressed: () {},
//           icon: Icons.chevron_right,
//           label: Text('Let\'s Tip'),
//         ),

// Center(
//         child: SizedBox.fromSize(
//           size: Size(200, 56), // button width and height
//           child: ClipRect(
//             child: Material(
//               elevation: 4,
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.white12, // button color
//               child: InkWell(
//                 splashColor: Colors.brown, // splash color
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => CalculatorUi()),
//                   );
//                 }, // button pressed
//                 child: Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       // icon
//                       Text(
//                         "Let\'s Tip",
//                         style: TextStyle(fontSize: 24),
//                       ),
//                       Icon(
//                         Icons.chevron_right,
//                         size: 30,
//                       ), // text
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
