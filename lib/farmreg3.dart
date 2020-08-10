import 'package:agroexpress/farmreg2.dart';
import 'package:agroexpress/termofservice.dart';
import 'package:flutter/material.dart';

class FarmRegThree extends StatefulWidget {
  @override
  _FarmRegThreeState createState() => _FarmRegThreeState();
}

class _FarmRegThreeState extends State<FarmRegThree> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/farmreg3.png"),
          fit: BoxFit.cover,
        ),
      ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100.0,
              ),
              Text(
                "Getting Closer!",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "Fill out the boxes below and",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "your almost done!",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
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
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 15.0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Name of Farm',
                    contentPadding: EdgeInsets.only(left: 20.0),
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: ImageIcon(
                        AssetImage('assets/formicon.png'),
                        color: Colors.green,
                      ),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'No Username Has Been Entered';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 15.0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Size of Farm',
                    contentPadding: EdgeInsets.only(left: 20.0),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: ImageIcon(
                        AssetImage('assets/formicon.png'),
                        color: Colors.green,
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'No Email Has Been Entered';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Upload a Logo or Image of Your Farm',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 105.0,
              ),
              Row(
                children: <Widget> [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 50.0, 0.0),
                    child: FlatButton(
                      onPressed: ()  => Navigator.push(context, new MaterialPageRoute(builder: (_) => FarmRegTwo())),
                      child: Text(
                        "Go Back",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset("assets/agroicon.png", scale: 14),
                      ),
                      Text(
                        "AGRO Express",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    margin: EdgeInsets.fromLTRB(55.0, 0.0, 10.0, 0.0),
                    child: FlatButton(
                      onPressed: ()  => Navigator.push(context, new MaterialPageRoute(builder: (_) => TermsService())),
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
