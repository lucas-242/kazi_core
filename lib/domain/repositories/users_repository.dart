import 'package:kazi_core/domain/entities/user.dart';
import 'package:kazi_core/domain/enums/user_type.dart';

abstract interface class UsersRepository {
  Future<List<User>> get({
    required UserType userType,
    int limit = 10,
    int offset = 1,
  });
}
