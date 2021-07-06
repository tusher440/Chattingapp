import 'package:flutter/material.dart';

class chatapp extends StatefulWidget {
  @override
  _chatappState createState() => _chatappState();
}

class _chatappState extends State<chatapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat App"),
      ),
    );
  }
}
