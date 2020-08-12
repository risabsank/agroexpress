import 'package:agroexpress/DriverHome.dart';
import 'package:agroexpress/DriverLocal.dart';
import 'package:agroexpress/DriverMaps.dart';
import 'package:agroexpress/DriverSettings2.dart';
import 'package:agroexpress/login.dart';
import 'package:flutter/material.dart';

class DriveSetOne extends StatefulWidget {
  @override
  _DriveSetOneState createState() => _DriveSetOneState();
}

class _DriveSetOneState extends State<DriveSetOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/general.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
                height: 30.0
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(15.0)
              ),
              margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex:2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
                      child: FlatButton(
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => DriveSetOne())),
                        child: Icon(
                          Icons.person_outline,
                          color: Colors.black,
                          size: 50.0,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
                      child: FlatButton(
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => DriveSetTwo())),
                        child: Icon(
                          Icons.credit_card,
                          color: Colors.black45,
                          size: 50.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 477.0,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Identity: Buyer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Username: RSBuys",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Password: *********",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Email: rsbuys@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Address: 1234 Street Lane",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "City: Franklin",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "State: Massachusetts",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Zipcode: 02038",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.white)
                  ),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    width: 30.0
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.white)
                  ),
                  child: FlatButton(
                    onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => LoginScreen())),
                    child: Text(
                      "Logout",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(15.0)
              ),
              margin: EdgeInsets.fromLTRB(5.0, 12.0, 5.0, 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: FlatButton(
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => DriverHome())),
                        child: Icon(
                          Icons.directions_car,
                          color: Colors.black45,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: FlatButton(
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => DriverLocal())),
                        child: ImageIcon(
                          AssetImage("assets/location.png"),
                          color: Colors.black45,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: FlatButton(
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => DriverMaps())),
                        child: Icon(
                          Icons.location_on,
                          color: Colors.black45,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: FlatButton(
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => DriveSetOne())),
                        child: Icon(
                          Icons.settings,
                          color: Colors.black,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

