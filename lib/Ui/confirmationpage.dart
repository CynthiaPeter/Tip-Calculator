import 'package:flutter/material.dart';
import 'package:tip_calculator/Ui/homepage.dart';
import 'package:flare_flutter/flare_actor.dart';

class ConfirmationPage extends StatefulWidget {
  @override
  _ConfirmationPageState createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0XFF22222E),
          body: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: SizedBox(
                  height: 300,
                  width: 300,
                  child: FlareActor(
                    'assets/images/success_check.flr',
                    animation: 'Untitled',
                    fit: BoxFit.fill,
                  ),
                )),
                SizedBox(height: 87),
                Text(
                  'Thank You!',
                  style: TextStyle(color: Color(0xffDADADA), fontSize: 48),
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  'Your payment is successful.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffE5E5E5),
                  ),
                ),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width * 8,
                  height: 51,
                  child: RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => HomePage()),
                      // );r
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => HomePage()),
                          (Route<dynamic> route) => false);
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Color(0XFF22222E),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
