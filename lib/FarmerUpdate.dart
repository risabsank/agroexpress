import 'package:agroexpress/FarmSearch.dart';
import 'package:agroexpress/FarmerSettings1.dart';
import 'package:agroexpress/FarmerUpload.dart';
import 'package:flutter/material.dart';

class FarmerUpdate extends StatefulWidget {
  @override
  _FarmerUpdateState createState() => _FarmerUpdateState();
}

class _FarmerUpdateState extends State<FarmerUpdate> {
  createAlertDialog(BuildContext context) {
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        backgroundColor: Colors.white54,
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.all(
                Radius.circular(20.0))),
        content: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Text("Lbs. of Produce: ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w600
              )),
              SizedBox(
                height: 15.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text("Price per Pound: ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600
                  )),
              SizedBox(
                height: 15.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text("Overall Condition: ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600
                  )),
              SizedBox(
                height: 15.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: FlatButton(
                    onPressed:  () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Excellent",
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0
                        ),
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
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: FlatButton(
                    onPressed:  () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Great",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0
                        ),
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
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: FlatButton(
                    onPressed:  () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Fair",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0
                        ),
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
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: FlatButton(
                    onPressed:  () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Poor",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0
                        ),
                      ),
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
                margin: EdgeInsets.symmetric(horizontal: 40.0),
                child: Center(
                  child: FlatButton(
                    onPressed:  () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Update",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
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
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => FarmerUpdate())),
                        child: Icon(
                            Icons.update,
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
                height: 10.0
            ),
            SizedBox(
                height: 10.0
            ),
            Container(
              height: 465.0,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
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
                          FlatButton(
                            onPressed: () {createAlertDialog(context);},
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
                            height: 45.0,
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
                  SizedBox(
                      height: 10.0
                  ),
              Container(
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
                          FlatButton(
                            onPressed: () {createAlertDialog(context);},
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
                            height: 45.0,
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
                  SizedBox(
                    height: 10.0,
                  ),
                   Container(
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
                          FlatButton(
                            onPressed: () {createAlertDialog(context);},
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
                            height: 45.0,
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

                        ],
                      ),
                    ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                SizedBox(
                  width: 50.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: FlatButton(
                    onPressed: () {createAlertDialog(context);},
                    child: Text(
                      "Add Product",
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
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => FarmerUpdate())),
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


