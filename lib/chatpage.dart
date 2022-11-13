import 'package:flutter/material.dart';
import 'package:whatsapp/image2.dart';
import 'package:whatsapp/profilepage.dart';

import 'image.dart';

class mychat extends StatelessWidget {
  const mychat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: AssetImage(
            "assets/pf2.jpg",
          ),
        ),
        title: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => myprofile()));
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Text("ASIM"),
          ),
        ),
        actions: [
          Icon(Icons.video_call),
          SizedBox(
            width: 10,
          ),
          Padding(padding: EdgeInsets.all(12.0), child: Icon(Icons.call)),
          PopupMenuButton(
              icon: Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => [
                    PopupMenuItem(value: '1', child: Text("View contact")),
                    PopupMenuItem(
                        value: '2', child: Text("Media,link,and docs")),
                    PopupMenuItem(
                      value: '3',
                      child: Text("settings"),
                    ),
                    PopupMenuItem(value: '4', child: Text("More"))
                  ]),
        ],
      ),
      body: Column(
        children: [
          // SizedBox(
          //   height: 20,
          // ),
          Expanded(child: list()),
          Divider(),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Message",
                prefixIcon: Icon(Icons.emoji_emotions),
                suffixIcon: Icon(Icons.send),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ],
      ),
    );
  }
}

class list extends StatelessWidget {
  const list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        if (index % 2 == 0) {
          return Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(topRight: Radius.circular(0)),
                        color: index == 4
                            ? Colors.transparent
                            : Colors.teal.shade300),
                    child: index == 4
                        ? InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => image2()));
                            },
                            child: Image.asset(
                              "assets/pf2.jpg",
                              fit: BoxFit.fill,
                              height: 250,
                            ),
                          )
                        : ListTile(
                            title: Text(
                              "  hello sir!\n",
                              style: TextStyle(
                                fontFamily: "Helvetica Neue Medium Extended",
                                fontSize: 23,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            trailing: Icon(
                              Icons.check_outlined,
                              color: Colors.orange,
                            ),
                          )),
              ],
            ),
          );
        } else if (index == 3) {
          return Row(
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                          .copyWith(topLeft: Radius.circular(0)),
                      color: Colors.transparent),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => image()));
                      },
                      child: Image.asset(
                        "assets/pf.jpg",
                        fit: BoxFit.fill,
                        height: 250,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 39,
              ),
            ],
          );
        } else {
          return Row(
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30)
                            .copyWith(topLeft: Radius.circular(0)),
                        color: Colors.grey),
                    child: ListTile(
                      title: index > 2
                          ? Text(
                              " what\n",
                              style: TextStyle(
                                  fontFamily: "Helvetica Neue Medium Extended",
                                  fontSize: 23),
                            )
                          : Text(
                              " yess\n",
                              style: TextStyle(
                                  fontFamily: "Helvetica Neue Medium Extended",
                                  fontSize: 23),
                            ),
                      trailing: Text("4:34 am"),
                    )),
              ),
              SizedBox(
                width: 39,
              )
            ],
          );
        }
      },
    );
  }
}
