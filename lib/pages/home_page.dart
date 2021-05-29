import 'package:cerita_anak_app/auth_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(231, 235, 237, 1),
      body: Container(
        alignment: Alignment.center,
        child: RaisedButton(
          onPressed: () async {
            await AuthServices.signOut();
            await Navigator.pushReplacementNamed(context, '/');
          },
          child: Text('SignOut'),
        ),
      ),
    );
  }
}
