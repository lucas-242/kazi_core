import 'package:kazi_core/domain/errors.dart';
import 'package:kazi_core/domain/models/create_user_params.dart';
import 'package:kazi_core/domain/repositories/users_repository.dart';
import 'package:kazi_core/shared/utils/log_utils.dart';

class CreateUserUseCase {
  CreateUserUseCase(this._usersRepository);

  final UsersRepository _usersRepository;

  Future<void> call(CreateUserParams params) async {
    try {
      final response = _usersRepository.create(params);
      return response;
    } on AppError catch (error) {
      Log.error(error);
      rethrow;
    }
  }
}
