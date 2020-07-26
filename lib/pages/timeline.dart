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
  // getUsers() {
  //   usersRef.getDocuments().then((snapshot) {
  //     snapshot.documents.forEach((doc) {
  //       print(doc.data);
  //     });
  //   });
  // }

  getUserById() async {
    final String id = 'GQrx3EqmXkwfxA95MvqY';
    DocumentSnapshot doc = await usersRef.document(id).get();
    print(doc.data);
    print(doc.documentID);
  }

  @override
  void initState() {
    getUserById();
    super.initState();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: header(isAppTitle: true),
      body: linearProgress(),
    );
  }
}
