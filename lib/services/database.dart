import 'package:afekaton_project/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseMethods {
  CollectionReference users =
      FirebaseFirestore.instance.collection("/classes/Fikus101/users");

  Future<DocumentReference> uplodeUserInfo(User user) async {
    return await users.add(user.getUserMap());
  }
}
