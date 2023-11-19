import 'package:bata/modules/project/LOGO1.dart';
import 'package:bata/modules/project/logo3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'logo2.dart';
class Logo2 extends StatefulWidget {
  const Logo2({super.key});

  @override
  State<Logo2> createState() => _Logo1State();
}

class _Logo1State extends State<Logo2> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context)=>Logo3(),
        ),
      );
    });
    return Scaffold(
      backgroundColor:Colors.white,
      body:  Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CircleAvatar(radius: 180,
              backgroundColor: Color(0xff46A4FF)
              ),
            SvgPicture.asset('assets/images/Group 14.svg'),
            SvgPicture.asset('assets/images/skinSpy-logog.svg'),
          ],
        ),
      ),
    );
  }
  }

