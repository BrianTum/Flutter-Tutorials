import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AppBar, AssetImage, Axis, Border, BorderRadius, BottomNavigationBar, BottomNavigationBarItem, BottomNavigationBarType, BoxDecoration, BoxFit, Brightness, BuildContext, ClipRRect, Color, Colors, Column, Container, Divider, EdgeInsets, FadeInImage, FontStyle, FontWeight, Icon, IconButton, ListView, MainAxisAlignment, MaterialApp, MediaQuery, NetworkImage, NeverScrollableScrollPhysics, Padding, RichText, Row, Scaffold, SingleChildScrollView, SizedBox, State, StatefulWidget, StatelessWidget, Text, TextOverflow, TextSpan, TextStyle, Widget, runApp;
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram/post.dart';
import 'package:instagram/story.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      home: Home(),
    ); 
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Story> _stories = [
    Story("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "Jane"),
    Story("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "Rick"),
    Story("https://images.pexels.com/photos/157661/young-woman-shooting-model-157661.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "John"),
    Story("https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "Grace"),
    Story("https://images.pexels.com/photos/573299/pexels-photo-573299.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "June"),
    Story("https://images.pexels.com/photos/756453/pexels-photo-756453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "Mark"),
    Story("https://images.pexels.com/photos/764529/pexels-photo-764529.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "Bruce"),
    Story("https://images.pexels.com/photos/1438275/pexels-photo-1438275.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", "Tom"),
    Story("https://images.pexels.com/photos/1937394/pexels-photo-1937394.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "Rome"),
    Story("https://images.pexels.com/photos/1164674/pexels-photo-1164674.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "Wendy"),
    Story("https://images.pexels.com/photos/219550/pexels-photo-219550.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "Peter"),
  ];

  List<Post> posts = [
    Post(
      userName: "kjkjkjk",
      userImage: "https://images.pexels.com/photos/1468379/pexels-photo-1468379.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      postImage: "https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      postCaption: "kjg jhgfj kfhlfkjlkjds kdhfkdhlkjhdfljfhldsls hjh kjh fsdhf",
    ),
    Post(
      userName: "ehwihfdkdh",
      userImage: "https://images.pexels.com/photos/733500/pexels-photo-733500.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      postImage: "https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      postCaption: "hk hkg jhg jf;dhlkjhdfvkj ldl lcblbxlc bl kxcb lxb",
    ),
    Post(
      userName: "diuhhczhk",
      userImage: "https://images.pexels.com/photos/1878522/pexels-photo-1878522.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      postImage: "https://images.pexels.com/photos/917494/pexels-photo-917494.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      postCaption: "kj kk lxklskdljsllkjksjkjhskjh  kj kzjk  kjh kxjckjxc k",
    ),
    Post(
      userName: "jsklsasckj",
      userImage: "https://images.pexels.com/photos/247206/pexels-photo-247206.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      postImage: "https://images.pexels.com/photos/36717/amazing-animal-beautiful-beautifull.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      postCaption: "kdsjfj;jds;j ;js ;js;j;skjkdfsdv vsjgdvj vg vajv sjh vh",
    ),
    Post(
      userName: "asZXkjcx",
      userImage: "https://images.pexels.com/photos/636736/pexels-photo-636736.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      postImage: "https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      postCaption: "fdfu luh llclcxjb lxjb ljblcxb lcj ljlc xjhcxcx ",
    ),
    Post(
      userName: "udshusic",
      userImage: "https://images.pexels.com/photos/864937/pexels-photo-864937.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      postImage: "https://images.pexels.com/photos/247599/pexels-photo-247599.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      postCaption: "hkj hkh kh   jvhuc uascvsskack kv gv jzvj gvg vgh vh",
    ),
    Post(
      userName: "ydgsucg",
      userImage: "https://images.pexels.com/photos/1382734/pexels-photo-1382734.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      postImage: "https://images.pexels.com/photos/709552/pexels-photo-709552.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      postCaption: "usouds dszlx lkjxcb khbckjhbcxhhvhg vk k kjhck hv",
    ),
    Post(
      userName: "mdbcbikjxkj",
      userImage: "https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      postImage: "https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      postCaption: "hkluhs lshldhsldlsj ldjbldbsl jbdlsjb j j dsjndlsjn",
    ),



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontSize: 30,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Feather.instagram),
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Feather.tv),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesome.send_o),
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Stories", style: TextStyle(fontSize: 14, ),),
                    Text("Watch All", style: TextStyle(fontSize: 14),),
                  ],
                ),
              ),

              // stories
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: _stories.map((story){
                    return Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            border: Border.all(
                              width: 3,
                              color: Color(0xFFc0392b),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: FadeInImage(
                              image: NetworkImage(story.image),
                              placeholder: AssetImage(
                                "assets/profileholder.png",
                              ),
                              width: 75,
                              height: 75,
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(story.name),
                      ],
                    );
                  }).toList(),
                ),
              ),

              // posts
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: posts.length,
                  itemBuilder: (ctx, i){
                    return Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ) ,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(45),
                                      child: FadeInImage(
                                        image: NetworkImage(posts[i].userImage),
                                        placeholder: AssetImage(
                                          "assets/profileholder.png",
                                        ),
                                        width: 45,
                                        height: 45,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          posts[i].userName,
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "New York",
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(SimpleLineIcons.options),
                                ),
                              ],
                            ),
                          ),
                          FadeInImage(
                            image: NetworkImage(posts[i].postImage),
                            width: MediaQuery.of(context).size.width,
                            placeholder: AssetImage(
                              "assets/placeholder.png",
                            )
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(FontAwesome.heart_o),
                                  ),
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(FontAwesome.comment_o),
                                  ),
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(FontAwesome.send_o),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(FontAwesome.bookmark_o),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 10,),
                              child: RichText(
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Liked by: ",
                                      style: TextStyle(
                                        color: Colors.black,
                                      )
                                    ),
                                    TextSpan(
                                      text: "Andrew, Joram",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      )
                                    ),
                                    TextSpan(
                                      text: "and",
                                    style: TextStyle(
                                      color: Colors.black,
                                    )
                                    ),
                                    TextSpan(
                                        text: "5646 more",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        )
                                    ),
                                  ]
                                ),
                              ),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "5667 Likes",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      posts[i].userName,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Text(
                                      posts[i].postCaption,
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "OCTOBER 14",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),

            ],
          ),

        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(SimpleLineIcons.home, color: Colors.black),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.search, color: Colors.black),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.plus_square_o, color: Colors.black),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.heart, color: Colors.black),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.user, color: Colors.black),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}


