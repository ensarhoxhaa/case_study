import 'package:case_study/features/discover/data/dto/location_dto.dart';
import 'package:case_study/features/discover/domain/entity/address_entity.dart';

class LocationEntity {
  final int id;
  final String title;
  final double? rating;
  final int? ratings;
  final AddressEntity? address;
  final int? minutesAway;
  final List<String> images;

  const LocationEntity({
    required this.id,
    required this.title,
    this.rating,
    this.ratings,
    this.address,
    this.minutesAway,
    required this.images,
  });

  LocationEntity copyWith({
    int? id,
    String? title,
    double? rating,
    int? ratings,
    AddressEntity? address,
    int? minutesAway,
    List<String>? images,
  }) {
    return LocationEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      rating: rating ?? this.rating,
      ratings: ratings ?? this.ratings,
      address: address ?? this.address,
      minutesAway: minutesAway ?? this.minutesAway,
      images: images ?? this.images,
    );
  }

  factory LocationEntity.fromDto(LocationDto dto) => LocationEntity(
    id: dto.id,
    title: dto.title,
    rating: dto.rating,
    ratings: dto.ratings,
    address: dto.address == null ? null : AddressEntity.fromDto(dto.address!),
    minutesAway: dto.minutesAway,
    images: dto.images ?? [],
  );
}