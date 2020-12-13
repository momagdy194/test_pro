
import 'package:cloud_firestore/cloud_firestore.dart';

class MyData {
 static CollectionReference users = FirebaseFirestore.instance.collection('users');

 static addUsers(name, age, emailAddress, profileImageLink) {
    users.add({
      "name": name,
      "age": age,
      "emailAddress": emailAddress,
      "profileImageLink": profileImageLink
    });
  }





  static readDate(){
    users.get();

    
  }

}


