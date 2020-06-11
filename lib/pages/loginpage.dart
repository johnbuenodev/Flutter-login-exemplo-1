import 'package:flutter/material.dart';
import 'package:login1flutter/bloc/validatedatalogin.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //varLogin
  //varPassword
  //TextEditingController _emailUser = TextEditingController();
  //TextEditingController _passwordUser = TextEditingController();
  /*
  //var emailVar = "não info";
  //var passwordVar = "não info";

  //var _logindados = "";

  void login() {
    emailVar = _emailUser.text;
    passwordVar = _passwordUser.text;
    if (emailVar == "" || passwordVar == "") {
      setState(() {
        _logindados = "Informe os dados";
        //_emailUser.clear();
        //_passwordUser.clear();
      });
    } else {
      setState(() {
        emailVar = _emailUser.text;
        passwordVar = _passwordUser.text;
        _logindados = emailVar + "-" + passwordVar;
        _emailUser.clear();
        _passwordUser.clear();
      });
    }
  }
  */
  var bloc = new validardataLogin();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      // body: Padding(
      //padding: EdgeInsets.all(12), //espacamento ao redor do elemento,
      //child: Center(
      //   child: Column(
      //  crossAxisAlignment: CrossAxisAlignment.stretch,
      // mainAxisAlignment: MainAxisAlignment.center,
      //child: ListView(
      body: ListView(
        children: <Widget>[
          Padding(
              //children: <Widget>[
              // Padding(
              //padding: EdgeInsets.fromLTRB(0,20,0,20),
              padding: EdgeInsets.all(20),
              child: Text(
                "ACESSO",
                style: TextStyle(color: Colors.black54, fontSize: 40),
                textAlign: TextAlign.center,
              )),
          Padding(
            //padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            padding: EdgeInsets.all(20),

            child: TextFormField(
              controller: bloc.emailUser,
              autofocus: true,
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.white, fontSize: 18),
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
                //border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            //padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            padding: EdgeInsets.all(20),
            child: TextFormField(
              controller: bloc.passwordUser,
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.white, fontSize: 18),
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
                //border: OutlineInputBorder(),
              ),

            ),
          ),
          Padding(
            //padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
            padding: EdgeInsets.all(20),
            child: ButtonTheme(
              height: 60.0,
              child: RaisedButton(
                onPressed: () {
                 setState(() {
                   bloc.login();
                 });

                },
                color: Colors.white,
                child: Text(
                  "Login",
                  style:
                      TextStyle(color: Colors.deepPurpleAccent, fontSize: 18),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            //padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Column(children: <Widget>[
              Text(
                bloc.logindados,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ]),
          ),
        ],
      ),
    );
    //),
    /////);
  }
}
