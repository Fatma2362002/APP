import 'package:bata/modules/project/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Logo3 extends StatefulWidget {
  const Logo3({super.key});

  @override
  State<Logo3> createState() => _Logo1State();
}

class _Logo1State extends State<Logo3> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context)=>Login(),
        ),
      );
    });
    return Scaffold(
      backgroundColor:Color(0xff46A4FF),
      body:  Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CircleAvatar(radius: 180,
              backgroundColor: Color(0xff46A4FF),),
            SvgPicture.asset('assets/images/Group 14.svg'),
            SvgPicture.asset('assets/images/skinSpy-logog.svg'),
          ],
        ),
      ),
    );
  }
}