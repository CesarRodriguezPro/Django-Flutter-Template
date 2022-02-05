import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Simple fronend Flutter'),
        actions: [
            ElevatedButton(
              onPressed: ()=>{
                Navigator.pushNamed(context, '/login_area')
              },
               child: const Text('Login'))
          ],
        ),
      body: const SafeArea(
        child: Text('public Area'),
      ),
    );
  }
}