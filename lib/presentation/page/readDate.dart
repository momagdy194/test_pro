import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ReadDate extends StatelessWidget {
  static const id ="ReadDate";

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return Scaffold(
      appBar: AppBar(title: Text("UserDate"),),

      body: StreamBuilder<QuerySnapshot>(
        stream: users.snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }

          return new ListView(
            children: snapshot.data.documents.map((DocumentSnapshot document) {
              return new ListTile(
                title: new Text("name ${document.data()['name']}"),
                subtitle: Column(children: [
                  Text("Age ${document.data()["age"]}"),
                  Text("Email ${document.data()["emailAddress"]}"),
                  Image.network(( "${document.data()['profileImageLink']}"))]),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
