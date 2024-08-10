// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceType _$ServiceTypeFromJson(Map<String, dynamic> json) => ServiceType(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      userId: (json['userId'] as num).toInt(),
      defaultValue: (json['defaultValue'] as num).toDouble(),
      discountPercent: (json['discountPercent'] as num).toDouble(),
    );
