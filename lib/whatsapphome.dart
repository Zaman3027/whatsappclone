import 'package:flutter/material.dart';
import 'package:shopping_app/pages/callsscreen.dart';
import 'package:shopping_app/pages/camerascreen.dart';
import 'package:shopping_app/pages/chatsscreen.dart';
import 'package:shopping_app/pages/statusscreen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
 with SingleTickerProviderStateMixin {

   TabController _tabController;
   @override
     void initState() {
       super.initState();
       _tabController = new TabController(vsync: this, initialIndex: 1,length: 4);
     }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: new AppBar(
          title: Text("WhatsApp"),
          elevation: 0.7,
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.camera_alt),
              ),
              new Tab(text: "CHATS",),
              new Tab(text: "STATUS",),
              new Tab(text: "CALLS",),
            ],
          ),
          actions: <Widget>[
            new Icon(Icons.search),
            new Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),),
            new Icon(Icons.more_vert),
            new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),),
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            new CameraScreen(),
            new ChatScreen(),
            new StatusScreen(),
            new CallScreen(),
          ],
        ),
        floatingActionButton: new FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(Icons.message,
          color:Colors.white,
          ),
          elevation: 0.7,
          onPressed: ()=>print("Open Chat"),
        ),
    );
  }
}