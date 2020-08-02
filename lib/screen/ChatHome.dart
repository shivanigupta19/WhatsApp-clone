import 'package:firebase_login/screen/status.dart';
import 'package:flutter/material.dart';
import 'Call.dart';
import 'Camera.dart';
import 'Chat.dart';

class ChatHome extends StatefulWidget {
  @override
  _ChatHomeState createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 1, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.7,
          title: Text(
            'Whatsapp',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.camera_alt)),
              new Tab(
                text: 'CHATS',
              ),
              new Tab(
                text: 'STATUS',
              ),
              new Tab(
                text: 'CALLS',
              )
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[Camera(), Chat(), Status(), Call()],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          backgroundColor: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
