import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:random_apps/pages/cel_fah_page.dart';
import 'package:random_apps/pages/cel_kel_page.dart';
import 'package:random_apps/pages/cel_rea_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Convert Apps"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(),
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Menu Convert", style: TextStyle(fontSize: 30)),
                SizedBox(height: 15),
                Container(
                  width: 200,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.blue[300],
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CelKelPage()));
                    },
                    child: Text(
                      "Celcius - Kelvin",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 200,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.blue[300],
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CelReaPage()));
                    },
                    child: Text(
                      "Celcius - Reamur",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 200,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.blue[300],
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CelFahPage()));
                    },
                    child: Text(
                      "Celcius - Fahrenheit",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
