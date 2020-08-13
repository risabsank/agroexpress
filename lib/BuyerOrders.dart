import 'package:agroexpress/BuyerCart.dart';
import 'package:agroexpress/BuyerHome.dart';
import 'package:agroexpress/BuyerLocal.dart';
import 'package:agroexpress/BuyerSearch.dart';
import 'package:agroexpress/BuyerSettings1.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class BuyerOrder extends StatefulWidget {
  @override
  _BuyerOrderState createState() => _BuyerOrderState();
}

class _BuyerOrderState extends State<BuyerOrder> {
  bool _value1 = false;
  void _value1Changed(bool value) => setState(() => _value1 = value);

  bool _value2 = false;
  void _value2Changed(bool value) => setState(() => _value2 = value);

  bool _value3 = false;
  void _value3Changed(bool value) => setState(() => _value3 = value);

  bool _value4 = false;
  void _value4Changed(bool value) => setState(() => _value4 = value);
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
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => BuyCart())),
                        child: Icon(
                          Icons.shopping_cart,
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
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => BuyerOrder())),
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
                height: 10.0
            ),
            Container(
              height: 475.0,
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
                                "Order: 2 lbs.",
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
                                "Price: \$2.64",
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
                              "Click When Order Has Been Received",
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
                                "Order: 1 lb.",
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
                                "Price: \$7.50",
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
                                value: _value3,
                                onChanged: _value3Changed,
                                checkColor: Colors.white,
                              ),
                              width: 20.0,
                              height: 20.0
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Click When Order Has Been Received",
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
                      height: 10.0
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
                                "Order: 1.5 lbs.",
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
                                "Price: \$3.14",
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
                  SizedBox(
                      height: 10.0
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
                              "Click When Order Has Been Received",
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
                      height: 10.0
                  ),
                  FlipCard(
                    direction: FlipDirection.VERTICAL, // default
                    front: Container(
                      height: 140.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/strawberries.png"),
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
                                "Strawberries",
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
                                "Order: 5 lbs.",
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
                                "Price: \$8.00",
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
                  SizedBox(
                      height: 10.0
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
                                value: _value4,
                                onChanged: _value4Changed,
                                checkColor: Colors.white,
                              ),
                              width: 20.0,
                              height: 20.0
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Click When Order Has Been Received",
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
                      height: 10.0
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
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
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: FlatButton(
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => BuyerHome())),
                        child: Icon(
                          Icons.home,
                          color: Colors.black45,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: FlatButton(
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => BuyerLocal())),
                        child: ImageIcon(
                          AssetImage("assets/location.png"),
                          color: Colors.black45,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: FlatButton(
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => BuyerSearch())),
                        child: Icon(
                          Icons.search,
                          color: Colors.black45,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: FlatButton(
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => BuyerSetOne())),
                        child: Icon(
                          Icons.settings,
                          color: Colors.black45,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: FlatButton(
                        onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => BuyerOrder())),
                        child: Icon(
                          Icons.add_shopping_cart,
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

