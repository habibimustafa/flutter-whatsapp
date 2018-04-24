import 'package:flutter/material.dart';
import 'camera_page.dart';
import 'chats_page.dart';
import 'status_page.dart';
import 'calls_page.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
    void initState() {
      super.initState();
      _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('WhatsApp'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS"),
          ],
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: () => print('Search'),
          ),
          new IconButton(
            icon: new Icon(Icons.more_vert),
            onPressed: () => print('Menu'),
          )
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraPage(),
          new ChatsPage(),
          new StatusPage(),
          new CallsPage()
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor:Theme.of(context).accentColor,
        child: new Icon(Icons.message, color: Colors.white),
        onPressed: () => print('new message'),
      ),
    );
  }
}