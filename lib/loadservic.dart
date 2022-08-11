import 'package:bank_app/main.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bank_app/peremen.dart';
import 'package:bank_app/screens/login/login.dart';
import 'package:bank_app/screens/startscreen/startscreen.dart';
import 'package:bank_app/serelization/seril.dart';

getSLoadString() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  if (prefs.getString('password') != null &&
      prefs.getString('servic') != null) {
    String? stringValue1 = prefs.getString('password');
    password = stringValue1;
    String? stringValue = prefs.getString('servic');
    servic = stringValue;
    pass.text = password!;
    email.text = servic!;
    ag = await getLoadList();
    if (ag != null) {
      return 0;
    } else {
      return 0;
    }
  } else {
    return 1;
  }
}
