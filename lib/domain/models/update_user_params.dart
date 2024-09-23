import 'package:kazi_core/domain/entities/address.dart';
import 'package:kazi_core/domain/entities/service_type.dart';
import 'package:kazi_core/domain/enums/user_type.dart';

class UpdateUserParams {
  UpdateUserParams({
    this.identifier,
    this.name,
    this.email,
    this.phones,
    this.role,
    this.services,
    this.addresses,
    this.userType,
    this.password,
  });

  final String? identifier;
  final String? name;
  final String? email;
  final List<String>? phones;
  final String? role;
  final List<ServiceType>? services;
  final List<Address>? addresses;
  final UserType? userType;

  final String? password;
}
