// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationDataDtoImpl _$$PaginationDataDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationDataDtoImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalRecords: (json['total_records'] as num?)?.toInt(),
      pageSize: (json['page_size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginationDataDtoImplToJson(
        _$PaginationDataDtoImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'total_pages': instance.totalPages,
      'total_records': instance.totalRecords,
      'page_size': instance.pageSize,
    };
