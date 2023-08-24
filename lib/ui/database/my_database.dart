import 'package:login/ui/database/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class MyDataBase {

  static addUser(User user) {
    var db = FirebaseFirestore.instance;
    var collection = db.collection("users").withConverter<User>(
        fromFirestore: (snapshot, options) => User.fromFireStore(snapshot.data()),
        toFirestore:(user, options) => user.toFireStore(),
    );
  }
}