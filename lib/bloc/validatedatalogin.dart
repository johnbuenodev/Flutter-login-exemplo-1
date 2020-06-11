import 'package:flutter/material.dart';

class validardataLogin{

  TextEditingController emailUser = TextEditingController();
  TextEditingController passwordUser = TextEditingController();

  var emailVar = "não info";
  var passwordVar = "não info";

  var logindados = "";


  void login() {
    emailVar = emailUser.text;
    passwordVar = passwordUser.text;
    if (emailVar == "" || passwordVar == "") {
      //setState(() {
        logindados = "Informe os dados";
        //_emailUser.clear();
        //_passwordUser.clear();
     // });
    } else {
      //setState(() {
        emailVar = emailUser.text;
        passwordVar = passwordUser.text;
        logindados = emailVar + "-" + passwordVar;
        emailUser.clear();
        passwordUser.clear();
      }//);
    }
  }

