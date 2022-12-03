import 'package:database_service/database_service.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';

class AuthLocalDataSource extends DatabaseCommonOperations<OtpHandshakeResponse> {
  final DatabaseService dbService;

  AuthLocalDataSource(this.dbService)
      : super(
          boxName: 'AuthDataSource',
          databaseService: dbService,
        );
}
