import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String _username;
  String _remail;
  String _rpassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Center(
            child: Text("Register Page"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: Image.asset('images/flutter.png'),
                ),
              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.account_circle_rounded),
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter valid email id as abc@gmail.com',
                ),

                onSaved: (input){
                  _username = input;
                },

                validator: (input){
                  if(input.isEmpty){
                    return "Please type an username";
                  }
                  return null;
                },

              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter valid email id as abc@gmail.com',
                ),

                onSaved: (input){
                  _remail = input;
                },

                validator: (input){
                  if(input.isEmpty){
                    return "Please type an email";
                  }
                  return null;
                },

              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter secure password',
                ),

                onSaved: (input){
                  _rpassword = input;
                },

                validator: (input){
                  if(input.length<6){
                    return "Password is too short";
                  }
                  return null;
                },
              ),
            ),

            SizedBox(height: 10,),

            FlatButton(
              onPressed: (){
                setState(() {

                });
              },
              child: Text("Send Data"),
              color: Colors.blueAccent,
              splashColor: Colors.blueAccent,
            ),

            FlatButton(
              onPressed: (){
                setState(() {
                  // Navigator.pop(context);
                });
              },
              child: Text("Logout"),
              color: Colors.blueAccent,
              splashColor: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
