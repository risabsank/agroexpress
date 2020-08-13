import 'package:agroexpress/FarmSearch.dart';
import 'package:agroexpress/FarmerSettings1.dart';
import 'package:agroexpress/FarmerUpdate.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class FarmerUpload extends StatefulWidget {
  @override
  _FarmerUploadState createState() => _FarmerUploadState();
}

class _FarmerUploadState extends State<FarmerUpload> {
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
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => FarmerUpload())),
                        child: Icon(
                          Icons.attach_money,
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
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => FarmerUpdate())),
                        child: Icon(
                            Icons.update,
                            color: Colors.black45,
                            size: 50.0
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 10.0
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
                    "Total Sales: \$119.48",
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
                height: 10.0
            ),
            Container(
              height: 470.0,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  FlipCard(
                    direction: FlipDirection.VERTICAL, // default
                    front: Container(
                      height: 140.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/apples.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black45,
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 7.5),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Icon(
                                  Icons.info_outline,
                                  color: Colors.white,
                                  size: 24.0
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 55.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "Red Delicious Apples",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 26.0,
                                ),
                              ),
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
                            color: Colors.black45,
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
                              alignment: Alignment.topLeft,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                  height: 15.0
                              ),
                              Text(
                                "Sold: 20 lbs.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Sales: 23.76",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
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
                      height: 10.0
                  ),
                  FlipCard(
                    direction: FlipDirection.VERTICAL, // default
                    front: Container(
                      height: 140.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/chilis.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black45,
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 7.5),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Icon(
                                  Icons.info_outline,
                                  color: Colors.white,
                                  size: 24.0
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 55.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "Red Chilis",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 26.0,
                                ),
                              ),
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
                            color: Colors.black45,
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
                              alignment: Alignment.topLeft,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                  height: 15.0
                              ),
                              Text(
                                "Sold: 10 lbs.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Price: \$67.50",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
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
                  FlipCard(
                    direction: FlipDirection.VERTICAL, // default
                    front: Container(
                      height: 140.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/grapes.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black45,
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 7.5),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Icon(
                                  Icons.info_outline,
                                  color: Colors.white,
                                  size: 24.0
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 55.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "Grapes",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 26.0,
                                ),
                              ),
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
                            color: Colors.black45,
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
                              alignment: Alignment.topLeft,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                  height: 15.0
                              ),
                              Text(
                                "Sold: 15 lbs.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Price: \$28.22",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20.0
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
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
                          color: Colors.black,
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

