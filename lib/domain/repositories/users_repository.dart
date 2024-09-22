import 'package:kazi_core/domain/entities/user.dart';
import 'package:kazi_core/domain/enums/user_type.dart';
import 'package:kazi_core/domain/models/create_user_params.dart';

abstract interface class UsersRepository {
  Future<void> create(CreateUserParams params);

  Future<List<User>> get({
    required UserType userType,
    int limit = 10,
    int offset = 1,
  });
}
