import 'package:bata/modules/project/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _Logo1State();
}

class _Logo1State extends State<SignUp> {
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
                  SvgPicture.asset('assets/images/ss-login-icon.svg'),

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
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'First Name:',
                              hintText: 'Enter Your First Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Last Name:',
                              hintText: 'Enter Your Last Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email:',
                              hintText: 'Enter Your Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'password:',
                              hintText: 'Enter Your password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Confirm password:',
                              hintText: 'Enter Your Confirm password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
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
                                'Login',
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
