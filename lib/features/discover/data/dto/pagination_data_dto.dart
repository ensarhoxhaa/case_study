import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_data_dto.freezed.dart';
part 'pagination_data_dto.g.dart';

@freezed
class PaginationDataDto with _$PaginationDataDto {
  const factory PaginationDataDto({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_records') int? totalRecords,
    @JsonKey(name: 'page_size') int? pageSize,
  }) = _PaginationDataDto;

  factory PaginationDataDto.fromJson(Map<String, Object?> json) =>
      _$PaginationDataDtoFromJson(json);
}
