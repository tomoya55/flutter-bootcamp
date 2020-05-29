import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatefulWidget {
  static const id = '/chat';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

FirebaseUser loginUser;

class _ChatScreenState extends State<ChatScreen> {
  final _firestore = Firestore.instance;
  final _auth = FirebaseAuth.instance;
  final _textController = TextEditingController();
  String messageText;

  void getCurrentUser() async {
    final user = await _auth.currentUser();
    if (user != null) {
      loginUser = user;
    }
  }

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
              }),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MessageStream(
                stream: _firestore
                    .collection('messages')
                    .orderBy('time', descending: false)
                    .snapshots()),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      onChanged: (value) {
                        messageText = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      //Implement send functionality.
                      _firestore.collection('messages').add(
                        {
                          'sender': loginUser.email,
                          'text': messageText,
                          'time': DateTime.now().millisecondsSinceEpoch
                        },
                      );
                      _textController.clear();
                    },
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageStream extends StatelessWidget {
  final Stream<QuerySnapshot> stream;

  MessageStream({this.stream});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) return Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.lightBlueAccent,
              ),
            );
          default:
            return Expanded(
              child: ListView(
                reverse: true,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                children: snapshot.data.documents.reversed
                    .map((DocumentSnapshot document) {
                  return MessageBubble(
                    sender: document.data['sender'],
                    text: document.data['text'],
                    isMe: loginUser.email == document.data['sender'],
                  );
                }).toList(),
              ),
            );
        }
      },
    );
  }
}

class MessageBubble extends StatelessWidget {
  MessageBubble({this.sender, this.text, this.isMe});
  final String sender;
  final String text;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Text(
            sender,
            style: TextStyle(fontSize: 12.0, color: Colors.black54),
          ),
          Material(
            borderRadius: BorderRadius.only(
              topLeft: isMe ? Radius.zero : Radius.circular(30.0),
              topRight: isMe ? Radius.circular(30.0) : Radius.zero,
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            elevation: 5.0,
            color: isMe ? Colors.white : Colors.lightBlueAccent,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                text,
                style: TextStyle(
                  color: isMe ? Colors.black54 : Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
