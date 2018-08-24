import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import './post.dart';

const bckColor = Color.fromRGBO(30, 30, 30, 1.0);

class TestBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bckColor,
      child:StreamBuilder(
        stream: Firestore.instance.collection('users').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if(!snapshot.hasData) return Center(child:Text("Loading..."));
          return ListView(
            children: snapshot.data.documents.map((DocumentSnapshot document) {
              return post(document['first'],document['last']);
            }).toList(),
          );
        },
      )
    );
  }
}

