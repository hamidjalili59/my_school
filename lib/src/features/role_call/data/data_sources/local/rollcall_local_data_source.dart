import 'package:database_service/database_service.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_model.dart';

class RollcallLocalDataSource
    extends DatabaseCommonOperations<List<Rollcall>> {
  final DatabaseService dbService;

  RollcallLocalDataSource(this.dbService)
      : super(
          boxName: 'RollcallDataSource',
          databaseService: dbService,
        );
}
