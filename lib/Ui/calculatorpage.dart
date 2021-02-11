import 'package:flutter/material.dart';

class CalculatorUi extends StatefulWidget {
  @override
  _CalculatorUiState createState() => _CalculatorUiState();
}

class _CalculatorUiState extends State<CalculatorUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF22222E),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(40),
          children: [
            Material(
              elevation: 20,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0XFF22222E),
                        blurRadius: 0.2,
                      )
                    ],
                    border: Border.all(
                      color: Color(0XFF22222E),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(39),
                        child: Column(
                          children: [
                            Text(
                              'Bill Amount',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff484856),
                              ),
                            ),
                            SizedBox(height: 10.5),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: TextField(
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: true),
                                style: TextStyle(
                                  fontSize: 36,
                                  color: Color.fromRGBO(255, 255, 255, 0.55),
                                ),
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                 // prefixIcon: Icon(Icons.attach_money),
                                  hintText: ('\$500'),
                                  hintStyle: TextStyle(
                                    fontSize: 36,
                                    color: Color.fromRGBO(255, 255, 255, 0.55),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text(
                                'Tip\%',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff484856),
                                ),
                              ),
                            ],
                          ))
                    ],
                  )),
            ),
            SizedBox(height: 59),
            Material(
              elevation: 20,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0XFF22222E),
                      blurRadius: 0.2,
                    )
                  ],
                  border: Border.all(
                    color: Color(0XFF22222E),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Text(
                            'Total Bill',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff484856),
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            '\$575',
                            style: TextStyle(
                                color: Color(0xffDADADA), fontSize: 48),
                          ),
                          SizedBox(
                            height: 36,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Tip Amount',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff484856),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    '\$75',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xffDADADA),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 59),
            Container(
              height: 51,
              child: RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                onPressed: () {},
                child: Text("Make Payment"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
