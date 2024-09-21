import 'package:kazi_core/domain/entities/user.dart';
import 'package:kazi_core/domain/enums/user_type.dart';
import 'package:kazi_core/domain/repositories/users_repository.dart';
import 'package:kazi_core/errors/errors.dart';

final class ApiUsersRepository implements UsersRepository {
  @override
  Future<List<User>> get({
    required UserType userType,
    int limit = 10,
    int offset = 1,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      return _employeesMock.where((user) => user.userType == userType).toList();
    } catch (error, trace) {
      throw ExternalError('Error to get ${userType.name}s', trace: trace);
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
