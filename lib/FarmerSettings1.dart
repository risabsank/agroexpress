import 'package:agroexpress/FarmSearch.dart';
import 'package:agroexpress/FarmerSettings2.dart';
import 'package:agroexpress/FarmerUpload.dart';
import 'package:agroexpress/login.dart';
import 'package:flutter/material.dart';

class FarmerSetOne extends StatefulWidget {
  @override
  _FarmerSetOneState createState() => _FarmerSetOneState();
}

class _FarmerSetOneState extends State<FarmerSetOne> {
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
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => FarmerSetOne())),
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
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => FarmerSetTwo())),
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
                          "Identity: Farmer",
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
                          "Username: VJFarms",
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
                          "Email: vjfarms@gmail.com",
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
                          "Farm Name: Charles River Farm",
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
                          "Farm Size: 10 acres",
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
          margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: FlatButton(
                    onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => FarmSearch())),
                    child: Icon(
                      Icons.control_point,
                      color: Colors.black45,
                      size: 35.0,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: FlatButton(
                    onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => FarmerUpload())),
                    child: Icon(
                      Icons.file_upload,
                      color: Colors.black45,
                      size: 35.0,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: FlatButton(
                    onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => FarmerSetOne())),
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

