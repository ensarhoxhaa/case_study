// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CallSummaryResponseDtoImpl _$$CallSummaryResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CallSummaryResponseDtoImpl(
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => LocationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : PaginationDataDto.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CallSummaryResponseDtoImplToJson(
        _$CallSummaryResponseDtoImpl instance) =>
    <String, dynamic>{
      'locations': instance.locations,
      'pagination': instance.pagination,
    };
