// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationDtoImpl _$$LocationDtoImplFromJson(Map<String, dynamic> json) =>
    _$LocationDtoImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
      ratings: (json['ratings'] as num?)?.toInt(),
      address: json['address'] == null
          ? null
          : AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      minutesAway: (json['minutesAway'] as num?)?.toInt(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$LocationDtoImplToJson(_$LocationDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'rating': instance.rating,
      'ratings': instance.ratings,
      'address': instance.address,
      'minutesAway': instance.minutesAway,
      'images': instance.images,
    };
