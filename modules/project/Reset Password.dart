import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Congratulations.dart';

class ResentPassword extends StatefulWidget {
  const ResentPassword({super.key});
  @override
  State<ResentPassword> createState() => _Logo1State();
}

class _Logo1State extends State<ResentPassword> {
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
                  SvgPicture.asset('assets/images/Access denied.svg'),
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
                              'Reset Password',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Text(
                            'Please enter your new password to continue',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 70.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'password:',
                              hintText: 'Enter Your password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              suffixIcon: Icon(Icons.visibility_off_outlined),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Confirm password:',
                              hintText: 'Confirm password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              suffixIcon: Icon(Icons.visibility_off_outlined),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                          SizedBox(
                            height: 180.0,
                          ),
                          Container(
                            color: Colors.grey,
                            width: double.infinity,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Congratulations(),
                                  ),
                                );
                              },
                              child: Text(
                                'Resent Password',
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
