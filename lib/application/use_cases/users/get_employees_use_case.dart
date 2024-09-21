import 'package:kazi_core/domain/entities/user.dart';
import 'package:kazi_core/domain/enums/user_type.dart';
import 'package:kazi_core/domain/repositories/users_repository.dart';
import 'package:kazi_core/errors/errors.dart';
import 'package:kazi_core/utils/log_utils.dart';

class GetEmployeesUseCase {
  GetEmployeesUseCase(this._usersRepository);

  final UsersRepository _usersRepository;

  Future<List<User>> call({int limit = 1, int offset = 1}) async {
    try {
      final response = _usersRepository.get(
        userType: UserType.employee,
        limit: limit,
        offset: offset,
      );
      return response;
    } on AppError catch (error) {
      Log.error(error);
      rethrow;
    }
  }
}
