import 'package:flutter/material.dart';

class CelFahPage extends StatefulWidget {
  @override
  _CelFahPageState createState() => _CelFahPageState();
}

class _CelFahPageState extends State<CelFahPage> {
  TextEditingController textEditingController = TextEditingController();
  String resultDisplay = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text("Celcius To Fahrenheit"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 10, top: 15, bottom: 15),
                        child: Column(
                          children: <Widget>[
                            Text("Input Temperature (C)",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(height: 10),
                            TextField(
                                controller: textEditingController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: "Celcius",
                                  hintText: "Enter number here",
                                  border: OutlineInputBorder(),
                                )),
                            Divider(height: 50),
                            Text("Convert Result (F)",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),
                            Container(
                              height: 50,
                              width: 1000,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200], border: Border.all()),
                              child: Center(
                                child: Text(resultDisplay,
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.bold)),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                RaisedButton(
                                  color: Colors.blue,
                                  onPressed: () {
                                    setState(() {
                                      resultDisplay = hitungSuhu().toString();
                                    });
                                  },
                                  child: Text(
                                    "Check",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                RaisedButton(
                                  color: Colors.red,
                                  onPressed: () {
                                    setState(() {
                                      clear();
                                    });
                                  },
                                  child: Text(
                                    "Clear",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 10, top: 15, bottom: 15),
                        child: Column(
                          children: <Widget>[
                            Text("Input Temperature (F)",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(height: 10),
                            TextField(
                                controller: textEditingController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: "Fahrenheit",
                                  hintText: "Enter number here",
                                  border: OutlineInputBorder(),
                                )),
                            Divider(height: 50),
                            Text("Convert Result (C)",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),
                            Container(
                              height: 50,
                              width: 1000,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200], border: Border.all()),
                              child: Center(
                                child: Text(resultDisplay,
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.bold)),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                RaisedButton(
                                  color: Colors.blue,
                                  onPressed: () {
                                    setState(() {
                                      resultDisplay = hitungSuhu().toString();
                                    });
                                  },
                                  child: Text(
                                    "Check",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                RaisedButton(
                                  color: Colors.red,
                                  onPressed: () {
                                    setState(() {
                                      clear();
                                    });
                                  },
                                  child: Text(
                                    "Clear",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  double hitungSuhu() {
    double suhu = double.parse(textEditingController.text);
    double hasil = (9 / 5 * suhu) + 32;

    return hasil;
  }

  clear() {
    resultDisplay = "0";
    textEditingController.text = "";
  }
}
