import 'package:database_service/database_service.dart';
import 'package:my_school/src/features/mediator_tc/domain/models/mediator.dart';

class MediatorLocalDataSource extends DatabaseCommonOperations<List<Mediator>> {
  final DatabaseService dbService;

  MediatorLocalDataSource(this.dbService)
      : super(
          boxName: 'MediatorDataSource',
          databaseService: dbService,
        );
}
