import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_chat/text_composer.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void _sendMessage(String message) {
    Firestore.instance.collection('messages').add({"text": message});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Chat with Firebase'),
        elevation: 0,
      ),
      body: TextComposer((text) {
        _sendMessage(text);
      }),
    );
  }
}
