import 'package:cloud_firestore/cloud_firestore.dart';

import 'models.dart';

const String userFirestoreCollection = 'user';

class UserCreatorService {
  Future<String> create(UserModel m) async {
    final doc = await FirebaseFirestore.instance
        .collection(userFirestoreCollection)
        .add(m.toMap());
    return doc.id;
  }
}

class FakeUserCreatorService extends UserCreatorService {
  create(UserModel m) async {
    return 'abcd' * 4;
  }
}

class UserReaderService {
  Future<UserModel> read(String id) async {
    id = 'gwa3c2L3omaUk78tPeKW';
    final doc =
        FirebaseFirestore.instance.collection(userFirestoreCollection).doc(id);
    final result = await doc.get();
    return UserModel.fromMap(doc.path, result.data()!);
  }
}

class FakeUserReaderService extends UserReaderService {
  read(String id) async {
    return UserModel(
      'Marcelo',
      '5533998525199',
      'marcelofv12@hotmail.com',
      documentPath: 'abcd' * 4,
    );
  }
}

class UserUpdaterService {
  update(UserModel m) {
    return;
  }
}

class FakeUserUpdaterService extends UserUpdaterService {
  update(UserModel m) {
    return;
  }
}

class UserDeleterService {
  delete(String id) {
    return;
  }
}

class FakeUserDeleterService extends UserDeleterService {
  delete(String id) {
    return;
  }
}
