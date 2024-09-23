import 'package:kazi_core/domain/entities/user.dart';
import 'package:kazi_core/domain/errors.dart';
import 'package:kazi_core/domain/models/get_users_params.dart';
import 'package:kazi_core/domain/repositories/users_repository.dart';
import 'package:kazi_core/shared/utils/log_utils.dart';

class GetUsersUseCase {
  GetUsersUseCase(this._usersRepository);

  final UsersRepository _usersRepository;

  Future<List<User>> call(GetUsersParams params) async {
    try {
      if (params.name == null && params.userType == null) {
        throw ClientError('No filter param informed to get user');
      }

      final response = _usersRepository.get(params);
      return response;
    } on AppError catch (error) {
      Log.error(error);
      rethrow;
    }
  }
}
