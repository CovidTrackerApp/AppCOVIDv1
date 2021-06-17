
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MainScreen.dart';

class ThreatForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ThreatFormState();
  }
}

class _ThreatFormState extends State<ThreatForm> {
  final _minpad = 5.0;

  @override
  Widget build(BuildContext context) {


    //TextStyle textStyle=Theme.of(context).textTheme.title;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   title: Text('COVID Tracker'),
      // ),
      body: Container(
          margin: EdgeInsets.all(_minpad * 2),
          child: Column(
            children: <Widget>[
              getImageAsset(),
              Padding(
                  padding: EdgeInsets.only(top: _minpad, bottom: _minpad * 10),
                  child: Text(
                    "Login",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 40.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  )),




              // ),
              Padding(
                  padding: EdgeInsets.only(top: _minpad, bottom: _minpad),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: Text('Register'),
                    onPressed: () {
                      debugPrint("Signup is pressed");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return MyApp();
                          }));
                    },
                    elevation: 20.0,
                  )),


            ],
          )),
    );
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/login_fig.png');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(
          left: _minpad * 10, right: _minpad * 10, top: _minpad * 10),
    );
  }
}