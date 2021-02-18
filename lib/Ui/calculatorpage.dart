import 'package:flutter/material.dart';

class CalculatorUi extends StatefulWidget {
  @override
  _CalculatorUiState createState() => _CalculatorUiState();
}

class _CalculatorUiState extends State<CalculatorUi> {
  double _editableTipPercentage = 0.0;
  double _editableBill = 0.0;
  double _totalBill = 0.0;
  double totalTip = 0.0;

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
                                // enabledBorder: OutlineInputBorder(borderSide: BorderSide( color: Colors.white),),
                                hintText: ('\$0.0'),
                                hintStyle: TextStyle(
                                  fontSize: 36,
                                  color: Color.fromRGBO(255, 255, 255, 0.55),
                                ),
                              ),
                              onChanged: (String value) {
                                try {
                                  _editableBill = double.parse(value);
                                } catch (exception) {
                                  _editableBill = 0.0;
                                }
                              },
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
                              // 'Tip\%',
                              '$_editableTipPercentage%',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff484856),
                              ),
                            ),
                            Slider(
                              min: 0,
                              max: 50,
                              activeColor: Colors.white,
                              inactiveColor: Color(0xff484856),
                              divisions: 10,
                              value: _editableTipPercentage,
                              onChanged: (double tipValue) {
                                setState(() {
                                  _editableTipPercentage = tipValue;

                                  calculateTotalTip(
                                   _totalBill, _editableTipPercentage, _editableBill, );
                                  // calculateTotalBill(_editableBill, totalTip);
                                });
                              },
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: 59),
            Material(
              elevation: 20,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
               // height: MediaQuery.of(context).size.height * 0.3,
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
                            '\$$_totalBill',
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
                                    '\$ $totalTip',
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
                child: Text("Make Payment", style: TextStyle(color: Color(0XFF22222E),),),
              ),
            )
          ],
        ),
      ),
    );
  }
// CAalculate total

  calculateTotalTip(
    double totalBill,
    double editableTipPercentage,
    double editableBill
  ) {
    setState(() {
      totalTip = (totalBill * editableTipPercentage) / 100;
      _totalBill = editableBill + totalTip;
    });
  }

  // calculateTotalBill(double editableBill, double totalTip) {
  //   setState(() {
  //     _totalBill = _editableBill + totalTip;
  //   });
  // }

}
