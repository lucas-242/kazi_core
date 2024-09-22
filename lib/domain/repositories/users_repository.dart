import 'package:kazi_core/domain/entities/user.dart';
import 'package:kazi_core/domain/models/create_user_params.dart';
import 'package:kazi_core/domain/models/get_users_params.dart';
import 'package:kazi_core/domain/models/update_user_params.dart';

abstract interface class UsersRepository {
  Future<void> create(CreateUserParams params);

  Future<void> delete(int userId);

  Future<List<User>> get(GetUsersParams params);

  Future<void> update(UpdateUserParams params);
}
