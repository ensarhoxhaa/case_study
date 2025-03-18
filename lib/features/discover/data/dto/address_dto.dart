import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

@freezed
class AddressDto with _$AddressDto {
  const factory AddressDto({
    @JsonKey(name: 'street') required String street,
    @JsonKey(name: 'suite') String? suite,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'zipCode') required String zipcode,
  }) = _AddressDto;

  factory AddressDto.fromJson(Map<String, Object?> json) =>
      _$AddressDtoFromJson(json);
}
