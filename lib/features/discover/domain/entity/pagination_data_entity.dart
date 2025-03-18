import 'package:case_study/features/discover/data/dto/pagination_data_dto.dart';

class PaginationDataEntity {
  final int currentPage;
  final int totalPages;
  final int totalRecords;
  final int pageSize;

  const PaginationDataEntity({
    required this.currentPage,
    required this.totalPages,
    required this.totalRecords,
    required this.pageSize,
  });

  PaginationDataEntity.initial()
      : currentPage = 0,
        totalPages = 0,
        totalRecords = 0,
        pageSize = 0;

  PaginationDataEntity copyWith({
    int? currentPage,
    int? totalPages,
    int? totalRecords,
    int? pageSize,
  }) {
    return PaginationDataEntity(
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
      totalRecords: totalRecords ?? this.totalRecords,
      pageSize: pageSize ?? this.pageSize,
    );
  }

  factory PaginationDataEntity.fromDto(PaginationDataDto dto) =>
      PaginationDataEntity(
        currentPage: dto.currentPage ?? 0,
        totalPages: dto.totalPages ?? 0,
        totalRecords: dto.totalRecords ?? 0,
        pageSize: dto.pageSize ?? 0,
      );
}
