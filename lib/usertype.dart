import 'package:agroexpress/buyreg1.dart';
import 'package:agroexpress/drivereg1.dart';
import 'package:agroexpress/farmreg1.dart';
import 'package:agroexpress/login.dart';
import 'package:flutter/material.dart';

class UserType extends StatefulWidget {
  @override
  _UserTypeState createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/usertype.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 85.0,
              ),
              Text(
                "Hey There!",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Are you a driver, buyer, or seller?",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            SizedBox(
              height: 30.0,
            ),
            Image.asset("assets/farmericon.png", scale: 1.2),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                color: Colors.black12,
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 7.5),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: FlatButton(
                  child: Text(
                      "Farmer",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: ()  => Navigator.push(context, new MaterialPageRoute(builder: (_) => FarmRegOne())),
                ),
              ),
            ),
              SizedBox(
                height: 30.0,
              ),
              Image.asset("assets/femalebuyer.png", scale: 1.2),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 7.5),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: FlatButton(
                    child: Text(
                      "Buyer",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: ()  => Navigator.push(context, new MaterialPageRoute(builder: (_) => BuyRegOne())),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Image.asset("assets/drivericon.png", scale: 1.2),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 7.5),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: FlatButton(
                    child: Text(
                      "Driver",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: ()  => Navigator.push(context, new MaterialPageRoute(builder: (_) => DriveRegOne())),
                  ),
                ),
              ),
              SizedBox(
                height: 90.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(50.0)
                    ),
                    margin: EdgeInsets.symmetric(vertical: 0.0),
                    child: FlatButton(
                      onPressed: ()  => Navigator.push(context, new MaterialPageRoute(builder: (_) => LoginScreen())),
                      child: Text(
                        "Go Back",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                          child: Image.asset("assets/agroicon.png", scale: 12)
                      ),
                      Text(
                          "AGRO Express",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        )
                      ),
                    ],
                  ),
                ],
              ),
          ],
          ),
        ),
      ),
    );
  }
}
