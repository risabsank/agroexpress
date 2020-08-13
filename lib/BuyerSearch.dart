import 'package:agroexpress/BuyerHome.dart';
import 'package:agroexpress/BuyerLocal.dart';
import 'package:agroexpress/BuyerSettings1.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class BuyerSearch extends StatefulWidget {
  @override
  _BuyerSearchState createState() => _BuyerSearchState();
}

class _BuyerSearchState extends State<BuyerSearch> {
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
        child: ListView(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.fromLTRB(0.0, 7.5, 0.0, 5.0),
              child: TextFormField(
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  labelText: 'Browse Produce',
                  contentPadding: EdgeInsets.only(left: 20.0),
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: ImageIcon(
                      AssetImage('assets/formicon.png'),
                      color: Colors.green,
                      size: 5.0
                    ),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return null;
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text(
                    "Filter:",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(
                    height: 5.0
                  ),
                  Container(
                    width: 320.0,
                    height: 27.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                            child: Text(
                              "Vegetables",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                            child: Text(
                              "Fruits",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal:10.0),
                            child: Text(
                              "Juicy",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal:10.0),
                            child: Text(
                              "Savory",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal:10.0),
                            child: Text(
                              "Greens",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white
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
              height: 15.0,
            ),
          Container(
            height: 485.0,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                FlipCard(
                  direction: FlipDirection.VERTICAL, // default
                  front: Container(
                    height: 140.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/tomatoes.png"),
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
                              "Roma Tomatoes",
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
                              "Stock: 50 lbs.",
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
                              "Price: \$2.20 per pound",
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
                              "Stock: 40 lbs.",
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
                              "Price: \$1.60 per pound",
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
                ),SizedBox(
                    height: 10.0
                ),
                FlipCard(
                  direction: FlipDirection.VERTICAL, // default
                  front: Container(
                    height: 140.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/blueberries.png"),
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
                              "Blueberries",
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
                              "Stock: 50 lbs.",
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
                              "Price: \$1.48 per pound",
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
                              "Stock: 25 lbs.",
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
                              "Price: \$1.32 per pound",
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
                              "Stock: 30 lbs.",
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
                              "Price: \$7.50 per pound",
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
                              "Stock: 35 lbs.",
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
                              "Price: \$2.09 per pound",
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
