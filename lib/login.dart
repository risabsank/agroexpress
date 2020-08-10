import 'package:agroexpress/usertype.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/login.jpg"),
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
                height: 135.0,
              ),
              Text(
                "The AGRO Express!",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "The New Way of Buying Groceries",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
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
                margin: EdgeInsets.fromLTRB(20.0, 7.5, 20.0, 30.0),
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
                ),
              ),
              //TODO: Remember Me Checkbox
              Container(
                margin: EdgeInsets.only(bottom: 15.0),
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
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
                      style: TextStyle(color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Register.',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.white
                            )),
                        // can add more TextSpans here...
                      ],
                    ),
                  ),
                )
              ),
              SizedBox(
                height: 95.0,
              ),
              Image.asset("assets/agroicon.png", scale: 14),
              Text(
                "AGRO Express",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}