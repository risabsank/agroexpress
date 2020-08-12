import 'package:agroexpress/BuyerHome.dart';
import 'package:agroexpress/DriverHome.dart';
import 'package:agroexpress/FarmerHome.dart';
import 'package:agroexpress/usertype.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String username, password;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool _value1 = false;
  void _value1Changed(bool value) => setState(() => _value1 = value);

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
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
          child: Center(
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 120.0,
                ),
                Center(
                  child: Text(
                    "The AGRO Express!",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Center(
                  child: Text(
                    "The New Way of Buying Groceries",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 7.5),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Username',
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
                    controller: usernameController,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin: EdgeInsets.fromLTRB(20.0, 7.5, 20.0, 5.0),
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Password',
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
                        return 'No Password Has Been Entered';
                      }
                      return null;
                    },
                    controller: passwordController,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: _value1,
                        onChanged: _value1Changed,
                        checkColor: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0),
                      child: Text(
                        "Remember Me",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 120.0),
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      if (usernameController.text == "RSBuys") {
                        Navigator.push(context, new MaterialPageRoute(builder: (_) => BuyerHome()));
                      }
                      else if (usernameController.text == "VJFarms") {
                        Navigator.push(context, new MaterialPageRoute(builder: (_) => FarmerHome()));
                      }
                      else if (usernameController.text == "TBDrives") {
                        Navigator.push(context, new MaterialPageRoute(builder: (_) => DriverHome()));
                      }
                      print(username);
                      print(password);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FlatButton(
                    onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (_) => UserType())),
                    child: Text.rich(
                      TextSpan(
                        text: 'Don\'t have an account yet? ',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Register.',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                          ),
                          // can add more TextSpans here...
                        ],
                      ),
                    ),
                  )
                ),
                SizedBox(
                  height: 110.0,
                ),
                Column(
                  children: [
                    Image.asset("assets/agroicon.png", scale: 12),
                    Text(
                      "AGRO Express",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}