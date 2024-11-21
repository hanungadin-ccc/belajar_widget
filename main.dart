import 'package:flutter/material.dart';

void main() {
  runApp(WhatsAppUI());
}

class WhatsAppUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ChatList(),
            Center(child: Text("Status Page")),
            Center(child: Text("Calls Page")),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: Icon(Icons.chat),
        ),
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  final List<Map<String, String>> chats = [
    {"name": "budi", "message": "tes 1111"},
    {"name": "john kennedy", "message": "p epep"},
    {"name": "hida", "message": "What's up?"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text(chats[index]["name"]!),
          subtitle: Text(chats[index]["message"]!),
          onTap: () {
            // Add chat details navigation logic here
          },
        );
      },
    );
  }
}