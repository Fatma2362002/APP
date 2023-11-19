import 'package:bata/modules/project/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Verification.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});
  @override
  State<ForgotPassword> createState() => _Logo1State();
}

class _Logo1State extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF45A4FF),
      appBar: AppBar(
          backgroundColor: Color(0xFF45A4FF),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          elevation: 0.0),
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
                  SvgPicture.asset('assets/images/Sign Up form.svg'),

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
                              'Forgot Password',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Text('Please enter your email so we can',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                            ),
                          ),
                          Text('send you a verification code',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                            ),),
                          SizedBox(
                            height: 70.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email:',
                              hintText: '@example.com',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              suffixIcon: Icon(Icons.email_outlined),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 170.0,
                          ),

                          Container(
                            height: 50.0,
                            color: Colors.blue,
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>  Verification(
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                ' Send reset code',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 17.0,
                                ),
                              ),

                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            height: 50.0,
                            color: Colors.white,
                            width: double.infinity,
                            child: OutlinedButton(
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
                                'Back to Login ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blue,
                                  fontSize: 17.0,
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