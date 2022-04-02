import 'package:flutter/material.dart';
import 'package:wave/signup.dart';
import 'package:wave/signin.dart';

class mmainmenu extends StatefulWidget {
  const mmainmenu({Key? key}) : super(key: key);

  @override
  _mmainmenuState createState() => _mmainmenuState();
}

class _mmainmenuState extends State<mmainmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Column(
        children: [
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                child: Image.asset(
                  'images/mylogo.png',
                  width: 140,
                  height: 140,

                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'اهلا بكم',
                      style: TextStyle(fontFamily: 'Arabic', fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                child: Container(
                  width: 40,
                  height: 2,
                  decoration: BoxDecoration(
                    color: Color(0xFF1008F4),
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'جامعة التكنولوجيا والاعلام',
                  style: TextStyle(fontSize: 20,fontFamily: 'Arabic'),
                  )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child:
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const signup()),);
                  },
                  child: Text("انشاء حساب", style: TextStyle(fontFamily: 'Arabic'),),
                  style: ElevatedButton.styleFrom
                    (primary: Colors.indigoAccent
                    ,minimumSize: Size(240, 40),
                    shape: new RoundedRectangleBorder
                      (
                    borderRadius: new BorderRadius.circular(30.0)
                      ),
                      ),


                ),

              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child:
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const signin()));
                  },
                  child: Text("تسجيل دخول", style: TextStyle(fontFamily: 'Arabic'),),
                  style: ElevatedButton.styleFrom
                    (minimumSize: Size(240, 40),
                    shape: new RoundedRectangleBorder
                      (
                        borderRadius: new BorderRadius.circular(30.0)
                    ),

                  ),


                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                      child: Container(
                        width: 80,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Color(0xFF9E9E9E),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'هل نسيت كلمة المرور',style: TextStyle(fontFamily: 'Arabic'),

                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: Container(
                        width: 80,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Color(0xFF9E9E9E),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child:
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text("التسجيل كزائر", style: TextStyle(fontFamily: 'Arabic',color: Colors.white),),
                  style: ElevatedButton.styleFrom
                    (primary: Colors.black45
                    ,minimumSize: Size(120, 20),
                    shape: new RoundedRectangleBorder
                      (
                        borderRadius: new BorderRadius.circular(30.0)
                    ),
                  ),


                ),

              ),

            ],
          ),
        ],

      ),






    );
  }
}
