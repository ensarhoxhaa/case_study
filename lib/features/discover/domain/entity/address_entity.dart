import 'package:case_study/features/discover/data/dto/address_dto.dart';

class AddressEntity {
  final String street;
  final String? suite;
  final String city;
  final String zipCode;

  const AddressEntity({
    required this.street,
    this.suite,
    required this.city,
    required this.zipCode,
  });

  AddressEntity copyWith({
    String? street,
    String? suite,
    String? city,
    String? zipCode,
  }) {
    return AddressEntity(
      street: street ?? this.street,
      suite: suite ?? this.suite,
      city: city ?? this.city,
      zipCode: zipCode ?? this.zipCode,
    );
  }

  factory AddressEntity.fromDto(AddressDto dto) => AddressEntity(
    street: dto.street,
    suite: dto.suite,
    city: dto.city,
    zipCode: dto.zipcode,
  );
}