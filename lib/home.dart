import 'package:flutter/material.dart';
import 'package:whatsapp/chat_data.dart';


class Home extends StatefulWidget {
  static const id = 'home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ChatModel> chats = ChatModel.getChats();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp',
              style: TextStyle(fontSize: 20,
            )
          ),
          centerTitle: false,
          backgroundColor: Colors.teal,
          bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              tabs:[
                Tab(
                  icon: Icon(Icons.camera_alt,
                  ),
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CHATS',
                ),
                Tab(
                  text: 'CALLS',
                ),

              ]
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10,),
            PopupMenuButton(

                icon: Icon(Icons.more_vert),

                itemBuilder:(context,){
                  return [
                    PopupMenuItem(
                      value: 1,
                      child: Text('New Group'),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text('Settings'),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text('QR Code'),
                    ),
                  ];
                } ),
            SizedBox(width: 10,),
          ],
        ),
        body:  TabBarView(
          children: [
            Text('Camera'),
            Text('Status'),
              buildchats(chats),
              Text('Calls'),
          ]
        ),
      ),
    );
  }
}

Widget buildchats( List<ChatModel> chats ) {
  return ListView.builder(
    itemCount: chats.length,

    itemBuilder: (context, index) {
      final chat = chats[index];
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(chat.image), // or NetworkImage
          radius: 25,
        ),
        title: Text(chat.fname,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(chat.msg,
            maxLines: 1, overflow: TextOverflow.ellipsis),
        trailing: Text(chat.time,
            style: const TextStyle(color: Colors.grey, fontSize: 12)),
      );
    },
  );
}