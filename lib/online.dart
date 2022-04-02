import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as dateo;
import 'package:http/http.dart';

import 'list.dart';




class online extends StatefulWidget {


  @override
  _onlineState createState() => _onlineState();
}

class _onlineState extends State<online> {


  Future GetData() async {


    var url = Uri.parse('https://example.com/whatsit/create');

    Map<String, String> headers = {"Content-type": "application/json"};

    Response response = await get(url);

    int statusCode = response.statusCode;

    String body = response.body;
    List<dynamic> list2 = jsonDecode(body);

    setState(() {
      for(var i = 0 ; i < list2.length;i++){


        print(list2[i]['day']);




      };


    });



    // TODO convert json to object...
  }


  Future Add_data() async {


    var url = Uri.parse('https://example.com/whatsit/create');
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


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}