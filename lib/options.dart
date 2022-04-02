import 'package:flutter/material.dart';
import 'package:wave/students.dart';
import 'package:wave/presents.dart';

class options extends StatefulWidget {
  const options({Key? key}) : super(key: key);

  @override
  _optionsState createState() => _optionsState();
}

class _optionsState extends State<options> {
  Color stateColor = Color(0xFFC81818);
  Icon stateLock = Icon(Icons.lock);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 20, 0, 0),
                        child: Text(
                          '12:30',

                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 20, 0),
                        child: Text(
                          '2022.02.27',

                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'images/mylogo.png',
                      width: 100,
                      height: 100,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,

                          children: [
                            Text(
                                  'Hello World',
                                )

                            ,
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child:
                              Text(
                              'Hello World',

                            ),)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: stateColor,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(icon: Icon(Icons.lock),iconSize: 50,color: Colors.white,
                        onPressed: () {
                        setState(
                                ()
                            {stateColor = Colors.green;
                              stateLock;



                        }); },

                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ElevatedButton.icon(onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const options()),);}, icon: Icon(Icons.person,size: 20,), label: Text("الحضور",style: TextStyle(fontFamily: 'Arabic'),),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.indigo,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                                  ,minimumSize: Size(150, 40)))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.schedule,size: 20,), label: Text("جدول المحاضرات",style: TextStyle(fontFamily: 'Arabic'),),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.indigo,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                                    ,fixedSize: Size(150, 40)),)
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ElevatedButton.icon(onPressed: () {Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const students()),);}, icon: Icon(Icons.table_rows,size: 20,), label: Text("سجل الطلاب",style: TextStyle(fontFamily: 'Arabic'),),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.indigo,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                                  ,minimumSize: Size(150, 40)), ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.add_alert,size: 20,), label: Text("ارسال تنبيه",style: TextStyle(fontFamily: 'Arabic'),),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.indigo,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),)
                                    ,minimumSize: Size(150, 40)), )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),








    );
  }
}
