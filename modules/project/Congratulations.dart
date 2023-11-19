import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login.dart';

class Congratulations extends StatefulWidget {
  const Congratulations({super.key});
  @override
  State<Congratulations> createState() => _Logo1State();
}

class _Logo1State extends State<Congratulations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF45A4FF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(

            children: [
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 180,
                  backgroundColor: Color(0xFF45A4FF),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(50.0),
                      topEnd: Radius.circular(50.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50.0,
                          ),
                          SvgPicture.asset('assets/images/Success Tick.svg'),
                          Padding(
                            padding: const EdgeInsets.all(20.0),

                            child:

                            Text(
                              'Congratulations',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Text(
                            'Your password has been successfully ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'changed',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 180.0,
                          ),
                          Container(
                            color: Colors.blue[400],
                            width: double.infinity,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Login (
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                'Done',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
