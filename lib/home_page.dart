import 'package:flutter/material.dart';
import 'home_page.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List<String> profileImage = [
    "image/post_1.jpg",
    "image/post_2.jpg",
    "image/post_3.jpg",
    "image/post_4.jpg",
    "image/post_5.jpg",
    "image/post_6.jpg",
    "image/post_7.jpg",
    "image/post_8.jpg",
    "image/post_9.jpg",
    "image/post_10.jpg"
  ];

  List<String> posts = [
    "image/insta_post_1.jpg",
    "image/insta_post_2.jpg",
    "image/insta_post_3.jpg",
    "image/insta_post_4.png",
    "image/insta_post_5.jpeg",
    "image/insta_post_6.jpg",
    "image/insta_post_7.jpg",
    "image/insta_post_8.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "image/post_11.png",
          height: 50,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_circle_outline,
                size: 24,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                size: 24,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat_bubble_outline,
                size: 24,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //story
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  8,
                  (index) => Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("image/post_12.jpg"),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(profileImage[index]),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Profile name',
                          style: TextStyle(fontSize: 12, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
            Column(
              children: List.generate(
                  8,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundImage:
                                      AssetImage("image/post_12.jpg"),
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundImage:
                                        AssetImage(profileImage[index]),
                                  ),
                                ),
                              ),
                              Text('Porfile Name'),
                              Spacer(),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.more_vert))
                            ],
                          ),
                          //image post
                          Image.asset(posts[index]),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite_border)),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.chat_bubble_outline)),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.label_outline)),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.bookmark_border)),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        style: TextStyle(color: Colors.black),
                                        text: "Liked by"),
                                    TextSpan(
                                        text: "Profile Name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                    )

                                  ]
                                  ),

                                )
                              ],
                            ),
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
