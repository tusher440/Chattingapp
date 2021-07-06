import 'package:flutter/material.dart';
import 'package:flutter_chattingapp/chat%20app.dart';
import 'package:flutter_chattingapp/register.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Center(
            child: Text("Login"),
        ),
      ),

      body: Form(
        key: _formkey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: Image.asset('images/flutter.png',
                    ),
                ),
              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: 'email',
                  hintText: 'Enter valid email id as abc@gmail.com',
                ),

                onSaved: (input){
                  _email = input;
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
                  _password = input;
                },

                validator: (input){
                  if(input.length<6){
                    return "Password is too short";
                  }
                  return null;
                },
              ),
            ),

            SizedBox(height: 20,),

            FlatButton(
                onPressed: (){
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 200,),
                  child: Text("Forgot Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
             Container(
               height: 50,
               width: 250,
               decoration: BoxDecoration(
                 color: Colors.blue,
                 borderRadius: BorderRadius.circular(20),
               ),
               child: FlatButton(
                   onPressed: (){
                     // Navigator.push(context, MaterialPageRoute(builder: (_) => chatapp()));
                   },
                   child: Text("Login",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 25,
                   ),
               )
               ),
             ),

             SizedBox(height: 10,),

             FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    ),
                  ),
                ),
              ),

            SizedBox(height: 100,),

            Text('New User? Create Account')
          ],
        ),
      ),
    );
  }
}
