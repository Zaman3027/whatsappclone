import 'package:flutter/material.dart';
import "package:shopping_app/models/chat_model.dart";

class ChatScreen extends StatefulWidget {
  @override
  ChatScreenState createState() {
    return new ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context,i)=> new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
              radius: 30.0,
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(dummyData[i].name,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
                new Text(dummyData[i].time,
                style: new TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey
                ),
                )
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(dummyData[i].message,
                style: new TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey
                ),
                ),
            ),
          )
        ],
      ),
    );
  }
}