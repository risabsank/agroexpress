import 'package:agroexpress/drivereg2.dart';
import 'package:agroexpress/termofservice.dart';
import 'package:flutter/material.dart';

class DriveRegThree extends StatefulWidget {
  @override
  _DriveRegThreeState createState() => _DriveRegThreeState();
}

class _DriveRegThreeState extends State<DriveRegThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/farmreg1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            Text(
              "Verify!",
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
                "Fill out the boxes below and",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "your almost done!",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
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
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 17.0),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Upload an Image of Your License',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 15.0,
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
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Upload an Image of Your Insurance',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 15.0,
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
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 4.0),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Upload an Image of Your Registration',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 55.0,
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
                    onPressed: ()  => Navigator.push(context, new MaterialPageRoute(builder: (_) => DriveRegTwo())),
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
                    onPressed: ()  => Navigator.push(context, new MaterialPageRoute(builder: (_) => TermsService())),
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
    );
  }
}
