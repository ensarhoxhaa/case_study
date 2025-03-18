import 'package:case_study/features/discover/data/dto/locations_response_dto.dart';
import 'package:case_study/features/discover/domain/entity/location_entity.dart';
import 'package:case_study/features/discover/domain/entity/pagination_data_entity.dart';

class LocationsResponseEntity {
  final PaginationDataEntity pagination;
  final List<LocationEntity> locations;

  const LocationsResponseEntity({
    required this.pagination,
    required this.locations,
  });

  LocationsResponseEntity.initial()
      : pagination = PaginationDataEntity.initial(),
        locations = [];

  LocationsResponseEntity copyWith({
    PaginationDataEntity? pagination,
    List<LocationEntity>? locations,
  }) {
    return LocationsResponseEntity(
      pagination: pagination ?? this.pagination,
      locations: locations ?? this.locations,
    );
  }

  factory LocationsResponseEntity.fromDto(LocationsResponseDto dto) =>
      LocationsResponseEntity(
        pagination: dto.pagination == null
            ? PaginationDataEntity.initial()
            : PaginationDataEntity.fromDto(dto.pagination!),
        locations: dto.locations == null
            ? []
            : dto.locations!.map(LocationEntity.fromDto).toList(),
      );
}
