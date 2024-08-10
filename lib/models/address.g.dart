// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      id: (json['id'] as num).toInt(),
      postalCode: json['postalCode'] as String,
      street: json['street'] as String,
      number: (json['number'] as num?)?.toInt(),
      neighborhood: json['neighborhood'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      complement: json['complement'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'postalCode': instance.postalCode,
      'street': instance.street,
      'number': instance.number,
      'neighborhood': instance.neighborhood,
      'city': instance.city,
      'state': instance.state,
      'complement': instance.complement,
    };
