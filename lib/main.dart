import 'package:flutter/material.dart';
import 'package:wave/loading.dart';
import 'package:wave/mainmenu.dart';
import 'package:wave/profile.dart';
import 'package:wave/options.dart';
import 'package:wave/students.dart';
import 'package:wave/page7.dart';
import 'package:wave/signup.dart';
import 'package:wave/signin.dart';




void main() {
  runApp(MaterialApp(home: signup(),));
}

class slash extends StatefulWidget {
  const slash({Key? key}) : super(key: key);

  @override
  _slashState createState() => _slashState();
}

class _slashState extends State<slash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:
        Center(
          child: Container(
            child: Image.asset('images/mylogo.png', scale: 5,)),
          ),
        );







  }
}
