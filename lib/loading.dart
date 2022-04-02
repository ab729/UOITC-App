import 'package:flutter/material.dart';

class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
      Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 140, 0, 0),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/mylogo.png',scale: 5,)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'تحميل البيانات',
                  style: TextStyle(fontSize: 24,fontFamily: 'Arabic'),

                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.threesixty_sharp,
                  color: Colors.black,
                  size: 24,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 120, 0, 0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WWW.X3S.IO',


                ),
              ],
            ),
          ),
        ],
      ),

      
      
      
      
      
      
    );
  }
}
