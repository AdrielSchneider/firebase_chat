import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  Firestore.instance
      .collection('mensagens')
      .document("msg1")
      .setData({'texto': "Adriel", 'from': "Milena", 'read': false});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Chat with Firebase',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            iconTheme: IconThemeData(color: Colors.blue)),
        home: ChatScreen());
  }
}
