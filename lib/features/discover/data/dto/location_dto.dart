import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_dto.dart';

part 'location_dto.freezed.dart';
part 'location_dto.g.dart';

@freezed
class LocationDto with _$LocationDto {
  const factory LocationDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'rating') double? rating,
    @JsonKey(name: 'ratings') int? ratings,
    @JsonKey(name: 'address') AddressDto? address,
    @JsonKey(name: 'minutesAway') int? minutesAway,
    @JsonKey(name: 'images') List<String>? images,
  }) = _LocationDto;

  factory LocationDto.fromJson(Map<String, Object?> json) =>
      _$LocationDtoFromJson(json);
}

