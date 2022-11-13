import 'package:flutter/material.dart';
import 'package:whatsapp/image2.dart';

class myprofile extends StatelessWidget {
  const myprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var val = false;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            border: Border.all(width: 45),
                            shape: BoxShape.circle),
                        child: Image.asset(
                          "assets/pf2.jpg",
                          fit: BoxFit.fill,
                        )),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => image2()));
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ASIM",
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.video_call,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.teal,
                  )
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 400,
                    color: Colors.white54,
                    child: Card(
                      elevation: 22,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 300),
                            child: Text(
                              "ABOUT",
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 20),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 300),
                            child: Text(
                              "2:34 AM",
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Card(
                  child: Column(
                    children: [
                      Text("Media,docs and links"),
                      Row(
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/pf.jpg",
                              fit: BoxFit.fill,
                            ),
                            width: 68,
                          ),
                          Container(
                            width: 68,
                            child: Image.asset(
                              "assets/pf2.jpg",
                              fit: BoxFit.fill,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Container(
                child: Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.notification_important_rounded),
                        title: Text("mute notifcation"),
                        trailing: Switch(
                          value: val,
                          onChanged: (bool value) {},
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.music_note_rounded),
                        title: Text("custom notifcation"),
                      ),
                      ListTile(
                        leading: Icon(Icons.picture_as_pdf_outlined),
                        title: Text("Media Vasibility"),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
