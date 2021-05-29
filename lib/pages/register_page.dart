import 'package:cerita_anak_app/auth_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(231, 235, 237, 1),
      body: Stack(
        children: [
          Positioned(
              top: height * 0.15,
              left: width * 0.075,
              child: Row(
                children: [
                  Text('Hi,',
                    style: TextStyle(
                        color: Color.fromRGBO(64, 78, 92, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.075
                    ),
                  ),
                  Text('Welcome!',
                    style: TextStyle(
                        color: Color.fromRGBO(198, 52, 55, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.075
                    ),
                  )
                ],
              )
          ),
          Positioned(
              top: height * 0.225,
              left: 0,
              child: Container(
                height: height * 0.01,
                width: width * 0.5,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(64, 78, 92, 1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                  )
                ),
              )
          ),
          Positioned(
              top: height * 0.25,
              left: width * 0.075,
              child: Row(
                children: [
                  Text('Please sign up to continue',
                    style: TextStyle(
                        color: Color.fromRGBO(64, 78, 92, 1),
                        fontSize: width * 0.05
                    ),
                  )
                ],
              )
          ),
          Positioned(
              bottom: height * 0.015,
              left: width * 0.025,
              child: Row(
                children: [
                  Container(
                    width: width * 0.95,
                    height: height * 0.66,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/rectangle_244'
                                '.png'),
                            fit: BoxFit.fill
                        )
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: GestureDetector(
                            onTap: () => Navigator.pushReplacementNamed(context, '/'),
                            child: Container(
                                width: width * 0.575,
                                height: height * 0.11,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage
                                          ('assets/images/rectangle_236'
                                            '.png'),
                                        fit: BoxFit.fill
                                    )
                                ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: GestureDetector(
                            onTap: () => Navigator.pushReplacementNamed(context, '/'),
                            child: Container(
                              width: width * 0.475,
                              height: height * 0.11,
                              alignment: Alignment.center,
                              child: Text('KEMBALI',
                                style: TextStyle(
                                    color: Color.fromRGBO(64, 78, 92, 1),
                                    fontSize: width * 0.065,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: height * 0.025,
                            left: width * 0.335,
                            child: Container(
                              height: height * 0.01,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 0.3),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)
                                  )
                              ),
                            )
                        ),
                        Positioned(
                          top: height * 0.065,
                          left: width * 0.03,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: height * 0.03),
                                width: width * 0.89,
                                height: height * 0.095,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage
                                          ('assets/images/rectangle_231'
                                            '.png'),
                                        fit: BoxFit.fill
                                    )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric
                                    (horizontal: 20),
                                  child: TextField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                      hintText: 'Email address',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: height * 0.03),
                                width: width * 0.89,
                                height: height * 0.095,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage
                                          ('assets/images/rectangle_231'
                                            '.png'),
                                        fit: BoxFit.fill
                                    )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric
                                    (horizontal: 20),
                                  child: TextField(
                                    obscureText: true,
                                    controller: passwordController,
                                    decoration: InputDecoration(
                                      hintText: 'Password',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: height * 0.03),
                                width: width * 0.89,
                                height: height * 0.095,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage
                                          ('assets/images/rectangle_231'
                                            '.png'),
                                        fit: BoxFit.fill
                                    )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric
                                    (horizontal: 20),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: 'Confirm password',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
          ),
          Positioned(
              right: 0,
              bottom: 0,
              child: GestureDetector(
                onTap: () async {
                  await AuthServices.signUp(emailController.text,
                      passwordController.text);
                  await Navigator.pushReplacementNamed(context, '/');
                },
                child: Container(
                  width: width * 0.5,
                  height: height * 0.125,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/rectangle_230'
                              '.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Text('DAFTAR',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.065,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
