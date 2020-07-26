import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttershare/widgets/header.dart';
import 'package:fluttershare/widgets/progress.dart';

final usersRef = Firestore.instance.collection('users');

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  List<dynamic> user = [];

  getUsers() async {
    QuerySnapshot snapshot = await usersRef.getDocuments();
    setState(() {
      user = snapshot.documents;
    });
  }

  getUserById() async {
    final String id = 'GQrx3EqmXkwfxA95MvqY';
    DocumentSnapshot doc = await usersRef.document(id).get();
    print(doc.data);
    print(doc.documentID);
  }

  @override
  void initState() {
    getUsers();
    // getUserById();
    super.initState();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: header(isAppTitle: true),
      body: Container(
        child: ListView(
          children: user.map((data) => Text(data['username'])).toList(),
        ),
      ),
    );
  }
}
