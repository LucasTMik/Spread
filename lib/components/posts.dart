import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  @override
  State createState() => PostsState();
  
}

class PostsState extends State<Posts> {

  static Widget post() {
    return Text("hallo");
  }

  List<Widget> _posts = [post()];
  Widget _currentPost = Text("");


  void addPost() {
    if(_currentPost != null) {
      setState(() {
        _currentPost = post();
        _posts.add(_currentPost);
      });
    }
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _posts==null? 0 : _posts.length*2,
        itemBuilder: (context, i) {
          final index = i~/2;
          if(i.isOdd) {
            return Divider();
          }else {
            return Container(child:Row(children:[Text("$index"),_posts[index],FloatingActionButton(onPressed: () {addPost();},)]));
          }
        },
      ),
    );
  }
}