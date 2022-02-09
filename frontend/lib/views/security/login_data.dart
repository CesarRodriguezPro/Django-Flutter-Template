import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../../connections/RequestTypes.dart';
import '../../database/db.dart';
// working in this part

Future authenticateUser(String username, String password) async{
  var response = await apiRequestWithPassword(username, password);
  log(response.reasonPhrase!);

  if(response.statusCode == 200 ){
    Map valueStream = await jsonToDartFormat(response);
    String _token = valueStream['token'].toString();
    saveApiKey(_token);
    return response.statusCode;
  }else{
    return response.statusCode;
  }
}


Future jsonToDartFormat(http.StreamedResponse response)async{
  String respondedData = await response.stream.bytesToString();
  var valueStream = json.decode(respondedData);
  return valueStream;
}


loginToApi( _name, _password, context)async{
  log(_name.text);
  log(_password.text);
  try{
    var respondCode = await authenticateUser(
        _name.text,
        _password.text
    ).timeout(const Duration(seconds: 5));

    if (respondCode == 200){
      Navigator.pushNamed(context, "/user_area");
    }
    else{
      log('bad password');
    }
  }

  on TimeoutException catch(e){
    log(e.message!);
  }
}
