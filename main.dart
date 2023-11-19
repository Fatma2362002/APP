
import 'package:bata/modules/project/%D9%85%D9%85.dart';
import 'package:bata/modules/project/Verification.dart';
import 'package:bata/modules/project/login.dart';
import 'package:bata/modules/project/logo2.dart';
import 'package:bata/modules/project/logo3.dart';
import 'package:flutter/material.dart';

import 'modules/project/Congratulations.dart';
import 'modules/project/LOGO1.dart';
import 'modules/project/Reset Password.dart';
import 'modules/project/forget password.dart';
import 'modules/project/sign up.dart';


void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Logo1()

    );
  }

}





