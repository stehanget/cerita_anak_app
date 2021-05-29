import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cerita_anak_app/auth_services.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(231, 235, 237, 1),
      body: Stack(
        children: [
          Positioned(
            top: height * 0.1,
            left: width * 0.12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: width * 0.76,
                  height: height * 0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/undraw_children'
                              '.png'),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: height * 0.43,
              left: width * 0.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Lorem',
                    style: TextStyle(
                        color: Color.fromRGBO(198, 52, 55, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.085
                    ),
                  ),
                  Text('Ipsum Dolor',
                    style: TextStyle(
                        color: Color.fromRGBO(64, 78, 92, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.085
                    ),
                  )
                ],
              )
          ),
          Positioned (
            bottom: 0,
            left: width * 0.025,
            child: Container(
              width: width * 0.95,
              height: height * 0.42,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/rectangle_227'
                          '.png'),
                      fit: BoxFit.fill
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(width * 0.075, width * 0.05,
                        0, 0),
                    child: Text('Sign in',
                      style: TextStyle(
                          color: Color.fromRGBO(64, 78, 92, 1),
                          fontSize: width * 0.065,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(width * 0.075, width * 0.04,
                        0, 0),
                    height: height * 0.06,
                    width: width * 0.8,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Email address',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(width * 0.075, width * 0.02,
                        0, 0),
                    height: height * 0.06,
                    width: width * 0.8,
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: GestureDetector(
                onTap: () => Navigator.pushReplacementNamed(context, '/register'),
                child: Container(
                  width: width * 0.66,
                  height: height * 0.125,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/rectangle_235'
                              '.png'),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              )
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: GestureDetector(
                onTap: () => Navigator.pushReplacementNamed(context, '/register'),
                child: Container(
                  width: width * 0.5,
                  height: height * 0.125,
                  alignment: Alignment.center,
                  child: Text('DAFTAR',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.065,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                onTap: () async {
                  await AuthServices.signIn(emailController.text,
                      passwordController.text);
                  if (firebaseUser != null) {
                    await Navigator.pushReplacementNamed(context, '/home');
                  }
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
                  child: Text('MASUK',
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.065,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
