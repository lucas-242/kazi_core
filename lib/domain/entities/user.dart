import 'package:equatable/equatable.dart';
import 'package:kazi_core/domain/entities/address.dart';
import 'package:kazi_core/domain/entities/service_type.dart';
import 'package:kazi_core/domain/enums/user_type.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.name,
    required this.email,
    this.photoUrl,
    required this.userType,
    required this.identifier,
    this.role,
    this.services = const [],
    this.addresses = const [],
    this.phones = const <String>[],
    this.password,
    required this.authToken,
    required this.refreshToken,
    required this.authExpires,
  });

  final int id;
  final String name;
  final String email;
  final String? photoUrl;

  final List<String> phones;

  /// CPF or CNPJ
  final String identifier;

  /// Identifies the User's role/function in the company.
  ///
  /// Will be null if [UserType] is [UserType.client].
  final String? role;

  /// Represents the list of [ServiceType] that user can offer.
  ///
  /// Will be empty if [UserType] is [UserType.client].
  final List<ServiceType> services;
  final List<Address> addresses;

  final UserType userType;

  final String? password;
  final String authToken;
  final String refreshToken;
  final DateTime authExpires;

  String get shortName => name.length > 18 ? name.split('').first : name;

  User copyWith({
    String? name,
    String? email,
    String? photoUrl,
    int? id,
    String? identifier,
    String? role,
    List<ServiceType>? services,
    List<Address>? addresses,
    List<String>? phones,
    String? password,
    UserType? userType,
    String? authToken,
    String? refreshToken,
    DateTime? authExpires,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      photoUrl: photoUrl ?? this.photoUrl,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      role: role ?? this.role,
      services: services ?? this.services,
      addresses: addresses ?? this.addresses,
      phones: phones ?? this.phones,
      password: password ?? this.password,
      userType: userType ?? this.userType,
      authToken: authToken ?? this.authToken,
      authExpires: authExpires ?? this.authExpires,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        photoUrl,
        identifier,
        role,
        services,
        addresses,
        phones,
        password,
        userType,
        authToken,
        authExpires,
        refreshToken,
      ];
}
