import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Reset Password.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});
  @override
  State<Verification> createState() => _Logo1State();
}

class _Logo1State extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF45A4FF),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          elevation: 0.0),
      backgroundColor: Color(0xFF45A4FF),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CircleAvatar(
                    radius: 180,
                    backgroundColor: Color(0xFF45A4FF),
                  ),
                  SvgPicture.asset('assets/images/Palm recognition.svg'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Expanded(
                flex: 2,
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
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              'Verification',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Text(
                            'We have send you a code to verify',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'your email address',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.grey[400],
                                width: 50.0,
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Text(' '),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Container(
                                color: Colors.grey[400],
                                width: 50.0,
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Text(' '),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Container(
                                color: Colors.grey[400],
                                width: 50.0,
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Text(' '),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Container(
                                color: Colors.grey[400],
                                width: 50.0,
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Text(' '),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account?',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Resend Code',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 125.0,
                          ),
                          Container(
                            color: Colors.grey[400],
                            width: double.infinity,
                            height: 42.0,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ResentPassword (
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                'Verify',
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
            ),
          ],
        ),
      ),
    );
  }
}
