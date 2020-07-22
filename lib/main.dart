import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:insta/post.dart';
import 'package:insta/story.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Story> _stories = [
    Story(
        "https://images.pexels.com/photos/1627936/pexels-photo-1627936.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Alisa"),
    Story(
        "https://images.pexels.com/photos/41315/africa-african-animal-cat-41315.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Lion"),
    Story(
        "https://images.pexels.com/photos/60778/pexels-photo-60778.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Robert"),
    Story(
        "https://images.pexels.com/photos/2120114/pexels-photo-2120114.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Evrora"),
    Story(
        "https://images.pexels.com/photos/41008/cowboy-ronald-reagan-cowboy-hat-hat-41008.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Lukas"),
    Story(
        "https://images.pexels.com/photos/4380970/pexels-photo-4380970.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Leonia"),
    Story(
        "https://images.pexels.com/photos/1036627/pexels-photo-1036627.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Enki"),
    Story(
        "https://images.pexels.com/photos/1462636/pexels-photo-1462636.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Elina"),
    Story(
        "https://images.pexels.com/photos/764340/pexels-photo-764340.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Tom")
  ];

  List<Post> posts = [
    Post(
        userName: "Kadyr",
        userImage:
            "https://images.pexels.com/photos/3031075/pexels-photo-3031075.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        postImage:
            "https://images.pexels.com/photos/3331094/pexels-photo-3331094.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        caption: "Hello \u2665"),
    Post(
        userName: "Dinara",
        userImage:
            "https://images.pexels.com/photos/1666021/pexels-photo-1666021.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        postImage:
            "https://images.pexels.com/photos/1687678/pexels-photo-1687678.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        caption: "Hi \u2665"),
    Post(
        userName: "Kasiet",
        userImage:
            "https://images.pexels.com/photos/66997/pexels-photo-66997.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        postImage:
            "https://images.pexels.com/photos/807598/pexels-photo-807598.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        caption: "The neture of KR"),
    Post(
        userName: "Ayzirek",
        userImage:
            "https://images.pexels.com/photos/3621630/pexels-photo-3621630.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        postImage:
            "https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        caption: "The neture of KR"),
    Post(
        userName: "Albert",
        userImage:
        "https://images.pexels.com/photos/145939/pexels-photo-145939.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        postImage:
        "https://images.pexels.com/photos/572861/pexels-photo-572861.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        caption: "That's my LION")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFEEEEEE),
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.camera,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.tv,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.send,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 110,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: _stories.map((story) {
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                border: Border.all(
                                    width: 3, color: Color(0xFF8e44ad))),
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              padding: EdgeInsets.all(2),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(70),
                                child: Image(
                                  image: NetworkImage(story.image),
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            story.name,
                          )
                        ],
                      );
                    }).toList()),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: posts.length,
                    itemBuilder: (ctx, i) {
                      return Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Image(
                                          image:
                                              NetworkImage(posts[i].userImage),
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        posts[i].userName,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    icon:
                                        Icon(SimpleLineIcons.options_vertical),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                            ),
                            FadeInImage(
                              image: NetworkImage(
                                  posts[i].postImage
                              ),
                              width: MediaQuery.of(context).size.width,
                              placeholder: AssetImage(
                                "assets/images/placeholder-image.png"
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        Feather.heart,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Icon(FontAwesome.comment_o,
                                          color: Colors.black),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Feather.send,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                                IconButton(
                                  icon: Icon(
                                    FontAwesome.bookmark_o,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {},
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 14),
                              width: MediaQuery.of(context).size.width,
                              child: RichText(
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Нравиться ",
                                        style: TextStyle(color: Colors.black)),
                                    TextSpan(
                                        text: " 01asanov__ ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: " и ",
                                        style: TextStyle(color: Colors.black)),
                                    TextSpan(
                                        text: "ещё 16726",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 5),
                              width: MediaQuery.of(context).size.width,
                              child: RichText(
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: posts[i].userName,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: " ${posts[i].caption}",
                                        style: TextStyle(color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "7 минут назад",
                                textAlign: TextAlign.start,
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
