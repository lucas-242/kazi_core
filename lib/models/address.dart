import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address extends Equatable {
  const Address({
    required this.id,
    required this.postalCode,
    required this.street,
    this.number,
    required this.neighborhood,
    required this.city,
    required this.state,
    this.complement,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  final int id;
  final String postalCode;
  final String street;
  final int? number;
  final String neighborhood;
  final String city;
  final String state;
  final String? complement;

  @override
  List<Object?> get props => [
        id,
        postalCode,
        street,
        number,
        neighborhood,
        city,
        state,
        complement,
      ];
}
