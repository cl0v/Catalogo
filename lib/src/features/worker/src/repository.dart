import 'package:cloud_firestore/cloud_firestore.dart';

import 'models.dart';

const String userFirestoreCollection = 'user'; //TODO: 

abstract class IWorkerRepository {
  Future<void> create(WorkerModel m); // Ou id caso eu precise
  Future<WorkerModel> read(String id);
  Future<void> update(WorkerModel m);
  Future<void> delete(String id);
}

class WorkerRepository implements IWorkerRepository {
  @override
  Future<void> create(WorkerModel m) {
    print('Criando sem mock');
    return FirebaseFirestore.instance
        .collection(userFirestoreCollection)
        .add(m.toMap());
  }

  @override
  Future<void> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<WorkerModel> read(String id) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<void> update(WorkerModel m) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

class MockWorkerRepository implements IWorkerRepository {
  @override
  Future<void> create(WorkerModel m) async {
    print('Criando mock com sucesso!');
  }

  @override
  Future<void> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<WorkerModel> read(String id) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<void> update(WorkerModel m) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
