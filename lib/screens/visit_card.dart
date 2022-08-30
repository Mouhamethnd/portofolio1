import 'package:flutter/material.dart';
import 'package:portofolio1/screens/details.dart';
import 'details.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff052555),
        appBar: AppBar(
          title: Text('Mon Portofolio'),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 90.0,
                    backgroundImage: AssetImage('assets/momo.jpg'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.transparent,
                      child: Text(
                        'Mouhameth Ndiaye',
                        style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 30.0,
                          height: 1.5,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Apprenant en developpement mobile avec flutter chez xarala academy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 20.0,
                          height: 1.5,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    color: Colors.transparent,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return Details();
                        }),
                      );
                    },
                    child: Text(
                      'En Savoir Plus',
                      style: TextStyle(
                        fontFamily: 'JosefinSans',
                        color: Colors.white70,
                      ),
                    ),
                    color: Colors.blueGrey,
                  ),
                ]),
          ),
        ));
  }
}
