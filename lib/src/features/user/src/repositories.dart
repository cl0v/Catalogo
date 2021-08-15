
import 'services.dart';

abstract class IUserRepository {
  /// Cadastra o usuario no servidor
  UserCreatorService get creator;

  /// Le o usuario no servidor
  UserReaderService get reader;
}

class UserRepository implements IUserRepository {
  @override
  UserCreatorService get creator => UserCreatorService();

  @override
  UserReaderService get reader => UserReaderService();
}

class FakeUserRepository implements IUserRepository {
  @override
  UserCreatorService get creator => FakeUserCreatorService();

  @override
  UserReaderService get reader => FakeUserReaderService();
}
