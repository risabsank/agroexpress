import 'package:agroexpress/DriverLocal.dart';
import 'package:flutter/material.dart';

class DriverHome extends StatefulWidget {
  @override
  _DriverHomeState createState() => _DriverHomeState();
}

class _DriverHomeState extends State<DriverHome> {
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
                          onPressed: () {},
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
                          onPressed: () => {},
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
