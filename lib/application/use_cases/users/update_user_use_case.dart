import 'package:kazi_core/domain/errors.dart';
import 'package:kazi_core/domain/models/update_user_params.dart';
import 'package:kazi_core/domain/repositories/users_repository.dart';
import 'package:kazi_core/shared/utils/log_utils.dart';

class UpdateUserUseCase {
  UpdateUserUseCase(this._usersRepository);

  final UsersRepository _usersRepository;

  Future<void> call(UpdateUserParams params) async {
    try {
      final response = _usersRepository.update(params);
      return response;
    } on AppError catch (error) {
      Log.error(error);
      rethrow;
    }
  }
}
