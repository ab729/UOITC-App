import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:wave/options.dart';
import 'loading.dart';
import 'package:shared_preferences/shared_preferences.dart';



var email = TextEditingController();
var pass = TextEditingController();


class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Future GetData() async {


    var url = Uri.parse('http://localhost:4000/load/');
    Map<String, String> headers = {"Content-type": "application/json"};

    Response response = await get(url);

    int statusCode = response.statusCode;

    String body = response.body;
    List<dynamic> list2 = jsonDecode(body);


    setState(() {

      print(list2);

      for(var i = 0 ; i < list2.length;i++){
           print(list2[i]['day']);
        if(list2[i]['email'] == email.text && list2[i]['password'] == pass.text)
        {
          print('login cooooooooooool ----------------');
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const loading()
            ),
          );

        }else{
          print('login cooooooooooool ----------------');
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const options()
            ),
          );
        }



      };


    });



    // TODO convert json to object...
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/mylogo.png',
                    width: 100,
                    height: 100,

                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Future of E-university',

                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 10, 50, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: email,
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
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 15, 50, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: pass,
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
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {

                        GetData();

                      },
                      child: Text("تسجيل الدخول", style: TextStyle(fontFamily: 'Arabic'),),
                      style: ElevatedButton.styleFrom
                        (primary: Colors.blue
                        ,minimumSize: Size(250, 50),
                        shape: new RoundedRectangleBorder
                          (
                            borderRadius: new BorderRadius.circular(30.0)
                        ),
                      ),


                    ),
                  ],
                ),
              ),
            ],
          ),
        ),



    );
  }
}
