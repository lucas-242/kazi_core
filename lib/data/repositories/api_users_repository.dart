import 'package:kazi_core/domain/entities/user.dart';
import 'package:kazi_core/domain/enums/user_type.dart';
import 'package:kazi_core/domain/errors.dart';
import 'package:kazi_core/domain/models/create_user_params.dart';
import 'package:kazi_core/domain/models/get_users_params.dart';
import 'package:kazi_core/domain/models/update_user_params.dart';
import 'package:kazi_core/domain/repositories/users_repository.dart';

final class ApiUsersRepository implements UsersRepository {
  @override
  Future<void> create(CreateUserParams params) async {
    try {
      await Future.delayed(const Duration(seconds: 4));
    } catch (error, trace) {
      throw ExternalError(
        'Error to create user with identifier: ${params.identifier}',
        trace: trace,
      );
    }
  }

  @override
  Future<void> delete(int userId) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
    } catch (error, trace) {
      throw ExternalError(
        'Error to create user with id: $userId',
        trace: trace,
      );
    }
  }

  @override
  Future<List<User>> get(GetUsersParams params) async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      Iterable<User> response = <User>[];

      if (params.userType != null) {
        response =
            _employeesMock.where((user) => user.userType == params.userType);
      }

      if (params.name != null) {
        response = _employeesMock.where((user) => user.name == params.name);
      }

      return response.toList();
    } catch (error, trace) {
      throw ExternalError(
        'Error to get user with filters: $params',
        trace: trace,
      );
    }
  }

  @override
  Future<User> getById(int userId) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      return _employeesMock.firstWhere((user) => user.id == userId);
    } catch (error, trace) {
      throw ExternalError('Error to get user with id: $userId', trace: trace);
    }
  }

  @override
  Future<void> update(UpdateUserParams params) async {
    try {
      await Future.delayed(const Duration(seconds: 4));
    } catch (error, trace) {
      throw ExternalError(
        'Error to update user with params: $params',
        trace: trace,
      );
    }
  }
}

final _employeesMock = [
  User(
    id: 1,
    identifier: '99999999999',
    name: 'Jupira Sem Dente',
    email: 'jupirinha_dentinho@test.com',
    role: 'Manicure',
    userType: UserType.employee,
    authToken: '',
    refreshToken: '',
    authExpires: DateTime.now(),
  ),
  User(
    id: 2,
    identifier: '99999999998',
    name: 'Churusbengou',
    email: 'churusbengou@test.com',
    role: 'Esteticista',
    userType: UserType.employee,
    authToken: '',
    refreshToken: '',
    authExpires: DateTime.now(),
  ),
  User(
    id: 3,
    identifier: '99999999997',
    name: 'Churusbagou',
    email: 'churusbagou@test.com',
    role: 'Esteticista',
    userType: UserType.employee,
    authToken: '',
    refreshToken: '',
    authExpires: DateTime.now(),
  ),
  User(
    id: 4,
    identifier: '99999999996',
    name: 'Mickey',
    email: 'mickey@test.com',
    userType: UserType.client,
    authToken: '',
    refreshToken: '',
    authExpires: DateTime.now(),
  ),
  User(
    id: 5,
    identifier: '99999999995',
    name: 'Minnie',
    email: 'miniie@test.com',
    userType: UserType.client,
    authToken: '',
    refreshToken: '',
    authExpires: DateTime.now(),
  ),
  User(
    id: 6,
    identifier: '99999999994',
    name: 'Pluto',
    email: 'pluto@test.com',
    userType: UserType.client,
    authToken: '',
    refreshToken: '',
    authExpires: DateTime.now(),
  ),
];
