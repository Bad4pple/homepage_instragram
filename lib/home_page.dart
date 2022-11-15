import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImage = [
    'assets/cat.jpg',
    'assets/floppa.jpg',
    'assets/f2.jpg',
    'assets/f3.jpg',
    'assets/f4.png',
    'assets/f5.jpg',
    'assets/f6.jpg',
    'assets/f7.jpg',
    'assets/f8.jpg'
  ];
  List<String> PostImage = [
    'assets/cat.jpg',
    'assets/floppa.jpg',
    'assets/f2.jpg',
    'assets/f3.jpg',
    'assets/f4.png',
    'assets/f5.jpg',
    'assets/f6.jpg',
    'assets/f7.jpg',
    'assets/f8.jpg'
  ];

  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/instagram_text.png",
          width: 100,
          height: 50,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // story
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    8,
                    (index) => Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage:
                                    AssetImage('assets/gradient.jpg'),
                                child: CircleAvatar(
                                    radius: 32,
                                    backgroundImage:
                                        AssetImage(profileImage[index])),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Painestrea",
                                  style: TextStyle(color: Colors.black87))
                            ],
                          ),
                        )),
              ),
            ),
            Divider(color: Colors.grey),
            Column(
              children: List.generate(
                  8,
                  (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,R
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundImage:
                                      AssetImage("assets/gradient.jpg"),
                                  child: CircleAvatar(
                                      radius: 16,
                                      backgroundImage:
                                          AssetImage(profileImage[index])),
                                ),
                              ),
                              Text("BadApple"),
                              Spacer(),
                              IconButton(
                                  onPressed: null, icon: Icon(Icons.more_vert)),
                            ],
                          ),
                          Image.asset(
                            PostImage[index],
                            width: 1000,
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.favorite_border)),
                              IconButton(
                                  onPressed: null,
                                  icon:
                                      Icon(Icons.chat_bubble_outline_rounded)),
                              Spacer(),
                              IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.bookmark_border))
                            ],
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(left: 15, top: 2, bottom: 15),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: "Liked by",
                                        style: TextStyle(color: Colors.black)),
                                    TextSpan(
                                        text: " Painestrea",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: " and ",
                                        style: TextStyle(color: Colors.black)),
                                    TextSpan(
                                        text: "others",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ])),
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          children: [
                                        TextSpan(
                                            text: " BadApple ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text:
                                                "This is the most smart cat in the universe")
                                      ]))
                                ]),
                          )
                        ],
                      )),
            )
          ],
        ),
      ),
    );
  }
}
