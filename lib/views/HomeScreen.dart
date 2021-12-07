import 'package:flutter/material.dart';
import 'package:weebreader/Post.dart';
import 'package:weebreader/constants.dart';
import 'package:weebreader/views/body.dart';
import 'package:weebreader/views/votesud.dart';

class HomeScreen extends StatelessWidget {
  final controller = PageController();
  List<Post> posts = [
    Post(
        subreddit: "r/blender",
        user: "JonhBLue",
        date_posted: "Saturday",
        user_icon: "assets/class3.png",
        post_image: "assets/class1.png",
        title: "TIL how to escape to vienna",
        description: "By boat",
        votes: 2)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Container(
              color: Colors.amberAccent,
            )),
            ListTile(
              title: TextButton(onPressed: () {}, child: Text("Profile")),
            ),
            ListTile(title: Text("Settings")),
            ListTile(title: Text("Help")),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(children: [
              SizedBox(height: 20, child: Text("Home")),
              PostCard(context, posts[0]),
              PostCard(context, posts[0]),
            ]),
          ],
        ),
      ),
    );
  }

  Container PostCard(BuildContext context, Post myPost) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 10),
      color: Color.fromRGBO(18, 18, 18, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PostHeader(
            user: myPost.user,
            user_icon: myPost.user_icon,
            subreddit: myPost.subreddit,
            date_posted: myPost.date_posted,
          ),
          Text(
            myPost.title,
            style: TextStyle(
              color: Color.fromRGBO(212, 215, 217, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          PostImage(myPost.post_image),
          PostFooter(myPost),
        ],
      ),
    );
  }

  Row PostFooter(Post myPost) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Voters(voteCount: myPost.votes),
        IconElement(icon: Icons.message, name: "5"),
        IconElement(icon: Icons.share, name: "Share"),
      ],
    );
  }

  AspectRatio PostImage(String image) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
    );
  }

  AppBar myAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      actions: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 4),
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: CircleAvatar(
                        backgroundImage: AssetImage("assets/class1.png")),
                  )),
              Container(
                height: 35,
                width: MediaQuery.of(context).size.width / 1.6,
                child: TextField(
                  style: TextStyle(
                    color: Color.fromRGBO(127, 131, 134, 1),
                  ),
                  decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search,
                          color: Color.fromRGBO(127, 131, 134, 1)),
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(127, 131, 134, 1))),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(30, 30, 30, 1),
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.coffee))
            ],
          ),
        )
      ],
    );
  }
}

class IconElement extends StatelessWidget {
  final IconData icon;
  final String name;

  IconElement({required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: Color.fromRGBO(137, 141, 144, 1),
          ),
        ),
        Text(name,
            style: TextStyle(
              color: Color.fromRGBO(137, 141, 144, 1),
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }
}

class PostHeader extends StatelessWidget {
  final String subreddit, user, date_posted, user_icon;
  PostHeader({
    required this.subreddit,
    required this.user,
    required this.date_posted,
    required this.user_icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: () {},
            child: CircleAvatar(backgroundImage: AssetImage(user_icon))),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subreddit,
              style: TextStyle(
                color: Color.fromRGBO(212, 215, 217, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Posted by ${user} on ${date_posted}",
              style: TextStyle(
                color: Color.fromRGBO(137, 141, 144, 1),
              ),
            ),
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_rounded,
              color: Color.fromRGBO(212, 215, 217, 1),
            ))
      ],
    );
  }
}
