import 'package:agroexpress/DriverHome.dart';
import 'package:agroexpress/DriverLocal.dart';
import 'package:agroexpress/DriverSettings1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class DriverMaps extends StatefulWidget {
  @override
  _DriverMapsState createState() => _DriverMapsState();
}

class _DriverMapsState extends State<DriverMaps> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
                height: 20.0,
              ),
              Container(
                width: 390,
                height: 125.0,
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white60,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                        child: Text(
                            "Map Key:",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7.0
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 35.0
                              ),
                              Text(
                                "Charles River Farms",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.blue,
                                size: 35.0
                              ),
                              Text(
                                "34 Lost Horse Trail",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 19.0
                          ),
                          Icon(
                              Icons.location_on,
                              color: Colors.green,
                              size: 35.0
                          ),
                          Text(
                            "You Are Here",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 485,
                child: FlutterMap(
                  options: MapOptions(
                    center: LatLng(42.0834, -71.397),
                    zoom: 12.0,
                  ),
                  layers: [
                    TileLayerOptions(
                      urlTemplate: "https://api.mapbox.com/styles/v1/rsankar123/ckdqxg34j0fcf19pk5hf52cdx/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoicnNhbmthcjEyMyIsImEiOiJja2Rxd2ttYnAxOXFkMnpxcWticXp2NzMwIn0.P199u2qUe7q74kZSGB0LXQ",
                    ),
                    MarkerLayerOptions(
                        markers: [
                          Marker(
                            width: 45.0,
                            point: LatLng(42.10399, -71.416761),
                            builder: (context) => Container(
                              child: IconButton(
                                icon: Icon(Icons.location_on),
                                color: Colors.red,
                                iconSize: 45.0,
                                onPressed: (){
                                  print("Charles River Farms");
                                },
                              ),
                            ),
                          ),
                          Marker(
                            width: 45.0,
                            point: LatLng(42.077728, -71.403754),
                            builder: (context) => Container(
                              child: IconButton(
                                icon: Icon(Icons.location_on),
                                color: Colors.green,
                                iconSize: 45.0,
                                onPressed: (){
                                  print("You Are Here");
                                },
                              ),
                            ),
                          ),
                          Marker(
                            width: 45.0,
                            point: LatLng(42.089866, -71.364381),
                            builder: (context) => Container(
                              child: IconButton(
                                icon: Icon(Icons.location_on),
                                color: Colors.blue,
                                iconSize: 45.0,
                                onPressed: (){
                                  print("User Destination");
                                },
                              ),
                            ),
                          ),
                        ],
                    ),
                  ],
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
