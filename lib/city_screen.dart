import 'package:flutter/material.dart';
import 'package:weatherapp/constant.dart';

class CityScreen extends StatefulWidget {

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  late String CityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: FlatButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 50.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  onChanged: (value){
                    CityName = value;
                  },
                  decoration: kTextFieldInputDecoration,
                ),
              ),
              FlatButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Get Weather',
                style: kButtonTextStyle,
                ),
              ),
            ],
          ),
        ),
        ),
    );
  }
}
