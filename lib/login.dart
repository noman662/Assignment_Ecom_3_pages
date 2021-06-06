import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Login")),),
        body: Center(
          child: Column(
            children: [ SizedBox(height: 50,),
              Container(
              width: 180,
              child: TextField(
                decoration: InputDecoration( labelText: "Email"),
              ),
            ),
            SizedBox(height: 30,),
             Container(
              width: 180,
              child: TextField(
                decoration: InputDecoration( labelText: "Password"),
              ),
            ),
            SizedBox(height: 30,),
           ElevatedButton(onPressed: (){}, child: Text("Login")),
          ],),
        ),
        ),
      );
  }
}