import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'list.dart';
import 'signin.dart';
import 'package:shared_preferences/shared_preferences.dart';



var email_t = TextEditingController();
var pass_t = TextEditingController();
var stage_t = TextEditingController();
var name_t = TextEditingController();

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Future Add_data() async {


    var url = Uri.parse('localhost:4000/add/');
    Map<String, String> headers = {"Content-type": "application/json"};

    String json =
        '{"name": "$name",'
        ' "password": "$pass2",'
        ' "stage": "$stage",'
        ' "email": "$email2"}';
    // make POST request
    Response response = await post(url, headers: headers, body: json);
    // check the status code for the result
    int statusCode = response.statusCode;
    // this API passes back the id of the new item added to the body
    String body1 = response.body;
    var data = jsonDecode(body1);
    print(data);
    var res = data["code"] ;


    if (res == null) {


    }


  }





  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
            children: [
              Container(
                height: 80,
                margin: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/mylogo.png',
                      width: 150,
                      height: 150,

                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'جامعة التكنولوجيا والاعلام',
                      style: TextStyle(fontSize: 20,fontFamily: 'Arabic'),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Future of E-university',

                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsetsDirectional.fromSTEB(30, 50, 30, 0),
                  child: TextFormField(
                    controller: name_t,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'اسم الطالب',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width:1,

                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Color(0xFF9E9E9E),
                    ),
                    textAlign: TextAlign.end,
                  ),
    ),

                 Container(
                  margin: EdgeInsetsDirectional.fromSTEB(30, 5, 30, 0),
                  child: TextFormField(
                    controller: email_t,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'البريد الالكتروني',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width:1,

                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Color(0xFF9E9E9E),
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),

                Container(
                  margin: EdgeInsetsDirectional.fromSTEB(30, 5, 30, 0),
                  child: TextFormField(
                    controller: stage_t,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'المرحلة',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width:1,

                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Color(0xFF9E9E9E),
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),

                Container(
                    margin: EdgeInsetsDirectional.fromSTEB(30, 5, 30, 0),
                    child: TextFormField(
                      controller: pass_t,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'كلمة السر',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width:1,

                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Color(0xFF9E9E9E),
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),



                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                            child : Center(
                              child: ElevatedButton( onPressed: (){
                                name   = name_t.text  ;
                                pass2  = pass_t.text ;
                                stage  = stage_t.text  ;
                                email2 = email_t.text  ;
                                Add_data();

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const signin()
                                  ),
                                );
                              },
                                child: Center(
                                  child: Text("انشاء حساب" , style: TextStyle(fontFamily: 'Arabic'),),

                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.indigoAccent,
                                    minimumSize: Size(120, 40),
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10)
                                    )


                                ),
                              ),
                            )

                        )

                      ],
                    )








            ],
          ),


    );
  }
}
