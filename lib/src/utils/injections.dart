import 'package:nutri/src/features/worker/features/service/src/repository.dart';
import 'package:nutri/src/features/worker/src/repository.dart';

class Injections {
  static final bool debug = false;

  static IWorkerRepository get workerRepository => debug ? MockWorkerRepository() : WorkerRepository();
  static IServiceRepository get serviceRepository => debug ? MockServiceRepository() : ServiceRepository();
}
