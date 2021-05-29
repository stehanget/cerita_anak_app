import 'package:cerita_anak_app/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cerita_anak_app/pages/login_page.dart';
import 'package:cerita_anak_app/pages/register_page.dart';
import 'package:cerita_anak_app/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.firebaseUserStream,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Menu',
        initialRoute: '/',
        routes: {
          '/' : (context) => LoginPage(),
          '/home' : (context) => HomePage(),
          '/register' : (context) => RegisterPage(),
        },
      ),
    );
  }
}