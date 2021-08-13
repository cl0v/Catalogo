import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nutri/src/constants/firebase.dart';
import 'package:nutri/src/features/user/models/user_model.dart';

class UserCreatorService {
  Future<String> create(UserModel user) async {
    final doc = await FirebaseFirestore.instance
        .collection(userCollection)
        .add(user.toMap());
    return doc.id;
  }
}

class FakeUserCreatorService extends UserCreatorService {
  Future<String> create(UserModel user) async {
    return 'abcd' * 4;
  }
}

