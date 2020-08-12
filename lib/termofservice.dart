import 'package:agroexpress/farmreg3.dart';
import 'package:agroexpress/login.dart';
import 'package:flutter/material.dart';

class TermsService extends StatefulWidget {
  @override
  _TermsServiceState createState() => _TermsServiceState();
}

class _TermsServiceState extends State<TermsService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/terms.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
          Text(
            "Welcome!",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Read the Terms of Service",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "and Community Guidelines!",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 45.0),
                child: FlatButton(
                  onPressed: () {},
                    child: Text(
                      'Click to Read Terms of Service',
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 25.0),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Click to Read Community Guidelines',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  Image.asset("assets/formicon.png", scale: 2),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "By clicking Create Account, you have accepted and ",
                            style: TextStyle(
                            color: Colors.white,
                              fontSize: 12.0,
                      ),
                      ),
                      Text(
                        "agreed to the ToS and Community Guidelines. ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Row(
              children: <Widget> [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(50.0)
                  ),
                  margin: EdgeInsets.fromLTRB(10.0, 0.0, 60.0, 0.0),
                  child: FlatButton(
                    onPressed: ()  => Navigator.push(context, new MaterialPageRoute(builder: (_) => FarmRegThree())),
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
                      child: Image.asset("assets/agroicon.png", scale: 14),
                    ),
                    Text(
                      "AGRO Express",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.0,
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
                  margin: EdgeInsets.fromLTRB(40.0, 0.0, 10.0, 0.0),
                  child: FlatButton(
                    onPressed: ()  => Navigator.push(context, new MaterialPageRoute(builder: (_) => LoginScreen())),
                    child: Text(
                      "Create Account",
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
    );
  }
}
