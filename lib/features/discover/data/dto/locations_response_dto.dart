import 'package:case_study/features/discover/data/dto/location_dto.dart';
import 'package:case_study/features/discover/data/dto/pagination_data_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locations_response_dto.freezed.dart';
part 'locations_response_dto.g.dart';

@freezed
class LocationsResponseDto with _$LocationsResponseDto{
  const factory LocationsResponseDto({
    @JsonKey(name: 'locations') List<LocationDto>? locations,
    @JsonKey(name: 'pagination') PaginationDataDto? pagination,
  }) = _CallSummaryResponseDto;

  factory LocationsResponseDto.fromJson(Map<String, Object?> json) => _$LocationsResponseDtoFromJson(json);
}