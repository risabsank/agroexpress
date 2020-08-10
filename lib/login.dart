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
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    contentPadding: EdgeInsets.only(left: 20.0),
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
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                child: TextFormField(
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    contentPadding: EdgeInsets.only(left: 20.0),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false
                    // otherwise.
                    if (_formKey.currentState.validate()) {
                      // If the form is valid, display a Snackbar.
                      Scaffold.of(context)
                          .showSnackBar(SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: Text('Login'),
                ),
              ),
              Container(
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
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}