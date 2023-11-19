import 'package:bata/modules/project/logo2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo1 extends StatefulWidget {
  const Logo1({super.key});

  @override
  State<Logo1> createState() => _logo1State();
}

class _logo1State extends State<Logo1> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context)=>Logo2(),
        ),
      );
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
                radius: 180,
                backgroundColor: Color(0xff46A4FF),
            ),
            SvgPicture.asset('assets/images/Group 14.svg'),
            Row(
             mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  SvgPicture.asset('assets/images/S.svg'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/kin.svg'),
                      SvgPicture.asset('assets/images/py.svg'),
                    ],
                  )
                ]
            )
          ],
        ),
      ),
    );
  }
}
