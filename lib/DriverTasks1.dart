import 'package:agroexpress/DriverHome.dart';
import 'package:agroexpress/DriverLocal.dart';
import 'package:agroexpress/DriverMaps.dart';
import 'package:agroexpress/DriverSettings1.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class DriveTaskOne extends StatefulWidget {
  @override
  _DriveTaskOneState createState() => _DriveTaskOneState();
}

class _DriveTaskOneState extends State<DriveTaskOne> {

  bool _value1 = false;
  void _value1Changed(bool value) => setState(() => _value1 = value);

  bool _value2 = false;
  void _value2Changed(bool value) => setState(() => _value2 = value);
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
              height: 30.0,
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
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => DriverHome())),
                        child: Icon(
                          Icons.search,
                          color: Colors.black45,
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
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => DriveTaskOne())),
                        child: Icon(
                            Icons.list,
                            color: Colors.black,
                            size: 50.0
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 5.0
            ),
            Container(
              height: 492.0,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  FlipCard(
                    direction: FlipDirection.VERTICAL, // default
                    front: Container(
                      height: 140.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/farmreg1.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black,
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "2.3 mi",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.info,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Hoffman Farms",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                SizedBox(
                                    width: 10.0
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    back: Container(
                      height: 140.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/gen.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black,
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 0.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Pay: \$16",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Total Distance: 15.0 mi",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Buyer Location: 34 Lost Horse Trail, MA",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 3.0)
                              ),
                              child: Checkbox(
                                value: _value1,
                                onChanged: _value1Changed,
                                checkColor: Colors.white,
                              ),
                              width: 20.0,
                              height: 20.0
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Click When Task is Completed",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  FlipCard(
                    direction: FlipDirection.VERTICAL, // default
                    front: Container(
                      height: 140.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/farmer1.jpg"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black,
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "8.7 mi",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.info,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Charles River Farms",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                SizedBox(
                                    width: 10.0
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    back: Container(
                      height: 140.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/gen.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black,
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 0.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Pay: \$10",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Total Distance: 9.0 mi",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Buyer Location: 32 Lawrence Drive, MA",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3.0)
                            ),
                            child: Checkbox(
                              value: _value2,
                              onChanged: _value2Changed,
                              checkColor: Colors.white,
                            ),
                            width: 20.0,
                            height: 20.0
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Click When Task is Completed",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Save",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
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
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => DriveTaskOne())),
                        child: Icon(
                          Icons.directions_car,
                          color: Colors.black,
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
                          color: Colors.black45,
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

