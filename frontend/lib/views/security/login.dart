import 'dart:developer';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
 
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  <Widget>[
                Text('Hello world'), 
                TextField(
                  onChanged: (text)=>{
                    log(text)
                  },
                ),             
            ],
          )
        ],
      ),
    );
  }
}