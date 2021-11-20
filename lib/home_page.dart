import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",
    "assets/4.jpg",
    "assets/5.jpg",
    "assets/6.jpeg",
    "assets/7.jpeg",
    "assets/8.jpg",
  ];
  List<String> posts = [
    "assets/post1.jpg",
    "assets/post2.jpg",
    "assets/post3.jpg",
    "assets/post4.jpeg",
    "assets/post5.jpeg",
    "assets/post6.jpeg",
    "assets/post7.jpg",
    "assets/post8.jpg",
  ];
  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/insta_title.png",
          height: 50,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(
                              'assets/story.png',
                            ),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage(
                                profileImages[index],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Profile Name",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black87),
                          )
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
                                    backgroundImage: AssetImage(
                                      'assets/story.png',
                                    ),
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundImage: AssetImage(
                                        profileImages[index],
                                      ),
                                    ),
                                  ),
                                ),
                                Text("Profile Name"),
                                Spacer(),
                                IconButton(
                                    icon: Icon(Icons.more_vert),
                                    onPressed: () {})
                              ],
                            ),
                            Image.asset(posts[index]),
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(Icons.chat_bubble_outline),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(Icons.label_outline),
                                  onPressed: () {},
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(Icons.bookmark_outline),
                                  onPressed: () {},
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(color: Colors.black),
                                      children: [
                                        TextSpan(text: "Liked by "),
                                        TextSpan(
                                          text: "Profile Name",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(text: " and"),
                                        TextSpan(
                                          text: " others",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(color: Colors.black),
                                      children: [
                                        TextSpan(
                                          text: "Profile Name",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                            text:
                                                "Random comment like this: Zuck, give me a job offer."),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "View all 12 comments",
                                    style: TextStyle(
                                      color: Colors.black38,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
