// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User._(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      photoUrl: json['photoUrl'] as String?,
      userType: $enumDecode(_$UserTypeEnumMap, json['userType']),
      identifier: json['identifier'] as String,
      role: json['role'] as String?,
      services: (json['services'] as List<dynamic>)
          .map((e) => ServiceType.fromJson(e as Map<String, dynamic>))
          .toList(),
      addresses: (json['addresses'] as List<dynamic>)
          .map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
      phones: (json['phones'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      password: json['password'] as String? ?? '',
      authToken: json['authenticationToken'] as String,
      refreshToken: json['refreshToken'] as String,
      authExpires: DateTime.parse(json['expires'] as String),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'photoUrl': instance.photoUrl,
      'phones': instance.phones,
      'identifier': instance.identifier,
      'role': instance.role,
      'services': instance.services,
      'addresses': instance.addresses,
      'userType': _$UserTypeEnumMap[instance.userType]!,
      'password': instance.password,
      'authenticationToken': instance.authToken,
      'refreshToken': instance.refreshToken,
      'expires': instance.authExpires.toIso8601String(),
    };

const _$UserTypeEnumMap = {
  UserType.administrator: 'administrator',
  UserType.manager: 'manager',
  UserType.selfEmployed: 'selfEmployed',
  UserType.employee: 'employee',
  UserType.client: 'client',
};
