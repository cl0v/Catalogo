import 'models.dart';


const String ServiceFirestoreCollection = 'Service';


abstract class IServiceRepository {
         Future<void> create(String userId, ServiceModel m); // Ou id caso eu precise
         Future<ServiceModel> read(String id);
         Future<void> update(ServiceModel m);
         Future<void> delete(String id);
}


class ServiceRepository implements IServiceRepository {
    @override
    Future<void> create(String userid, ServiceModel m) {
        // TODO: implement create
        throw UnimplementedError();
    }
    @override
    Future<void> delete(String id) {
        // TODO: implement delete
        throw UnimplementedError();
    }
    @override
    Future<ServiceModel> read(String id) {
        // TODO: implement read
        throw UnimplementedError();
    }
    @override
    Future<void> update(ServiceModel m) {
        // TODO: implement update
        throw UnimplementedError();
    }
}




class MockServiceRepository implements IServiceRepository {
    @override
    Future<void> create(String userid, ServiceModel m) {
        // TODO: implement create
        throw UnimplementedError();
    }
    @override
    Future<void> delete(String id) {
        // TODO: implement delete
        throw UnimplementedError();
    }
    @override
    Future<ServiceModel> read(String id) {
        // TODO: implement read
        throw UnimplementedError();
    }
    @override
    Future<void> update(ServiceModel m) {
        // TODO: implement update
        throw UnimplementedError();
    }
}