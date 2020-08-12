import 'package:agroexpress/farmreg1.dart';
import 'package:agroexpress/farmreg3.dart';
import 'package:flutter/material.dart';

class FarmRegTwo extends StatefulWidget {
  @override
  _FarmRegTwoState createState() => _FarmRegTwoState();
}

class _FarmRegTwoState extends State<FarmRegTwo> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/farmreg2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 115.0,
              ),
              Center(
                child: Text(
                  "Almost Set!",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "Fill out the boxes below and",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "your one step closer!",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 15.0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Street Address',
                    contentPadding: EdgeInsets.only(left: 20.0),
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: ImageIcon(
                        AssetImage('assets/formicon.png'),
                        color: Colors.green,
                      ),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'No Response Has Been Entered';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 15.0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    labelText: 'City',
                    contentPadding: EdgeInsets.only(left: 20.0),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: ImageIcon(
                        AssetImage('assets/formicon.png'),
                        color: Colors.green,
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'No Response Has Been Entered';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 15.0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    labelText: 'State',
                    contentPadding: EdgeInsets.only(left: 20.0),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: ImageIcon(
                        AssetImage('assets/formicon.png'),
                        color: Colors.green,
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'No Response Has Been Entered';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 15.0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Zipcode',
                    contentPadding: EdgeInsets.only(left: 20.0),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: ImageIcon(
                        AssetImage('assets/formicon.png'),
                        color: Colors.green,
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'No Response Has Been Entered';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 125.0,
              ),
              Row(
                children: <Widget> [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 57.5, 0.0),
                    child: FlatButton(
                      onPressed: ()  => Navigator.push(context, new MaterialPageRoute(builder: (_) => FarmRegOne())),
                      child: Text(
                        "Go Back",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset("assets/agroicon.png", scale: 12),
                      ),
                      Text(
                        "AGRO Express",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    margin: EdgeInsets.fromLTRB(57.5, 0.0, 10.0, 0.0),
                    child: FlatButton(
                      onPressed: ()  => Navigator.push(context, new MaterialPageRoute(builder: (_) => FarmRegThree())),
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
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
