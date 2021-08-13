import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nutri/src/constants/firebase.dart';
import 'package:nutri/src/features/user/models/user_model.dart';

class UserReaderService {
  Future<UserModel> id(String uid) async {
    uid = 'gwa3c2L3omaUk78tPeKW';
    final result = await FirebaseFirestore.instance
        .collection(userCollection)
        .doc(uid)
        .get();
    return UserModel.fromMap(result.id, result.data()!);
  }

  read(String uid) {
    //TODO: Implement read;
  }
}

//TODO: Obrigar a sobrescrever a funcao id() sem importacao.... mixin e extensao apenas
class FakeUserReaderService extends UserReaderService {
  Future<UserModel> id(String uid) async {
    return UserModel(
      'Marcelo',
      '5533998525199',
      'marcelofv12@hotmail.com',
      id: 'abcd' * 4,
    );
  }
}
