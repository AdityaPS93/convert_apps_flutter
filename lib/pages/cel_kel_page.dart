import 'package:flutter/material.dart';

class CelKelPage extends StatefulWidget {
  @override
  _CelKelPageState createState() => _CelKelPageState();
}

class _CelKelPageState extends State<CelKelPage> {
  TextEditingController controllerCel = TextEditingController();
  TextEditingController controllerKel = TextEditingController();
  String resultDisplayCel = "";
  String resultDisplayKel = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Celcius <-> Kelvin"),
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
                              controller: controllerCel,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: "Celcius",
                                hintText: "Enter number here",
                                border: OutlineInputBorder(),
                              )),
                          Divider(height: 50),
                          Text("Convert Result (K)",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Container(
                            height: 50,
                            width: 1000,
                            decoration: BoxDecoration(
                                color: Colors.grey[200], border: Border.all()),
                            child: Center(
                              child: Text(resultDisplayCel,
                                  //textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
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
                                    resultDisplayCel = hitungSuhuCelcius().toString();
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
                                    clearCel();
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
                          Text("Input Temperature (K)",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          SizedBox(height: 10),
                          TextField(
                              controller: controllerKel,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: "Kelvin",
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
                              child: Text(resultDisplayKel,
                                  //textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
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
                                    resultDisplayKel = hitungSuhuKelvin().toString();
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
                                    clearKel();
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
        ),
      ),
    );
  }

  double hitungSuhuCelcius() {
    double suhu = double.parse(controllerCel.text);
    double hasilCel = suhu + 273.15;

    return hasilCel;
  }

  double hitungSuhuKelvin() {
    double suhu = double.parse(controllerKel.text);
    double hasilKel = suhu - 273.15;

    return hasilKel;
  }

  clearCel() {
    resultDisplayCel = "0";
    controllerCel.text = "";
  }

  clearKel() {
    resultDisplayKel = "0";
    controllerKel.text = "";
  }
}

hitungSuhuKelvin() {
}
