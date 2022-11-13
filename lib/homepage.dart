import 'package:flutter/material.dart';
import 'package:whatsapp/chatpage.dart';

class myhome extends StatelessWidget {
  const myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WHATSAPP"),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ]),
          actions: [
            Icon(Icons.search),
            PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                      PopupMenuItem(value: '1', child: Text("new group")),
                      PopupMenuItem(value: '2', child: Text("SETTINGS")),
                      PopupMenuItem(value: '3', child: Text("LOGOUT"))
                    ])
          ],
        ),
        body: TabBarView(
          children: [
            Center(child: Icon(Icons.camera_alt)),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => mychat()));
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/pf2.jpg"),
                      ),
                      title: Text("ASIM"),
                      subtitle: Text("hi asim!"),
                      trailing: Text("3:40 pm"),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        index == 0
                            ? Text("recent update")
                            : ListTile(
                                leading: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.green, width: 4),
                                    shape: BoxShape.circle,
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/pf2.jpg"),
                                  ),
                                ),
                                title: Text("ASIM"),
                                subtitle: Text("3 minutes ago"),
                              ),
                      ],
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/pf2.jpg"),
                    ),
                    title: Text("ASIM"),
                    subtitle: index / 2 == 0
                        ? Text(
                            "Missed call",
                            style: TextStyle(color: Colors.red),
                          )
                        : Text(
                            "video call",
                          ),
                    trailing: index / 2 == 0
                        ? Icon(Icons.call)
                        : Icon(Icons.video_call),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
