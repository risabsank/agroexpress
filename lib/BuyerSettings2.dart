import 'package:agroexpress/BuyerHome.dart';
import 'package:agroexpress/BuyerLocal.dart';
import 'package:agroexpress/BuyerSettings1.dart';
import 'package:flutter/material.dart';

class BuyerSetTwo extends StatefulWidget {
  @override
  _BuyerSetTwoState createState() => _BuyerSetTwoState();
}

class _BuyerSetTwoState extends State<BuyerSetTwo> {
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
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
                    child: FlatButton(
                      onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => BuyerSetOne())),
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.black45,
                        size: 50.0,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
                  child: FlatButton(
                    onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => BuyerSetTwo())),
                    child: Icon(
                        Icons.credit_card,
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
                height: 15.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120.0, vertical: 5.0),
                    child: Column(
                      children: [
                        Text(
                          "Card Type:",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Image.asset("assets/visa.png", scale: 4,),
                      ],
                    ),
                  ),
                ),
              SizedBox(
                height: 15.0
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
                      "Card Number:",
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
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "XXXX-XXXX-XXXX-1234",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500
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
                height: 125.0,
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
                          onPressed: () {},
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
                          onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => BuyerSetTwo())),
                          child: Icon(
                            Icons.settings,
                            color: Colors.black,
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
                          onPressed: () {},
                          child: Icon(
                            Icons.add_shopping_cart,
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