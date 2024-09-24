import 'package:kazi_core/application/use_cases/users/create_user_use_case.dart';
import 'package:kazi_core/application/use_cases/users/delete_user_use_case.dart';
import 'package:kazi_core/application/use_cases/users/get_user_use_case.dart';
import 'package:kazi_core/application/use_cases/users/get_users_use_case.dart';
import 'package:kazi_core/application/use_cases/users/update_user_use_case.dart';
import 'package:kazi_core/data/repositories/api_users_repository.dart';
import 'package:kazi_core/domain/repositories/users_repository.dart';
import 'package:kazi_core/shared/injection/service_injector.dart';
import 'package:kazi_core/shared/injection/service_locator.dart';

abstract class UsersModule {
  static void init() {
    ServiceInjector.factory<UsersRepository>(ApiUsersRepository());

    ServiceInjector.factory(
      CreateUserUseCase(ServiceLocator.get<UsersRepository>()),
    );
    ServiceInjector.factory(
      DeleteUserUseCase(ServiceLocator.get<UsersRepository>()),
    );
    ServiceInjector.factory(
      GetUserUseCase(ServiceLocator.get<UsersRepository>()),
    );
    ServiceInjector.factory(
      GetUsersUseCase(ServiceLocator.get<UsersRepository>()),
    );
    ServiceInjector.factory(
      UpdateUserUseCase(ServiceLocator.get<UsersRepository>()),
    );
  }
}
