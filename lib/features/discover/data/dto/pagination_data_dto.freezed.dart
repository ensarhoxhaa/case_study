// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginationDataDto _$PaginationDataDtoFromJson(Map<String, dynamic> json) {
  return _PaginationDataDto.fromJson(json);
}

/// @nodoc
mixin _$PaginationDataDto {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_records')
  int? get totalRecords => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int? get pageSize => throw _privateConstructorUsedError;

  /// Serializes this PaginationDataDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationDataDtoCopyWith<PaginationDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationDataDtoCopyWith<$Res> {
  factory $PaginationDataDtoCopyWith(
          PaginationDataDto value, $Res Function(PaginationDataDto) then) =
      _$PaginationDataDtoCopyWithImpl<$Res, PaginationDataDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_records') int? totalRecords,
      @JsonKey(name: 'page_size') int? pageSize});
}

/// @nodoc
class _$PaginationDataDtoCopyWithImpl<$Res, $Val extends PaginationDataDto>
    implements $PaginationDataDtoCopyWith<$Res> {
  _$PaginationDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationDataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? totalRecords = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationDataDtoImplCopyWith<$Res>
    implements $PaginationDataDtoCopyWith<$Res> {
  factory _$$PaginationDataDtoImplCopyWith(_$PaginationDataDtoImpl value,
          $Res Function(_$PaginationDataDtoImpl) then) =
      __$$PaginationDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_records') int? totalRecords,
      @JsonKey(name: 'page_size') int? pageSize});
}

/// @nodoc
class __$$PaginationDataDtoImplCopyWithImpl<$Res>
    extends _$PaginationDataDtoCopyWithImpl<$Res, _$PaginationDataDtoImpl>
    implements _$$PaginationDataDtoImplCopyWith<$Res> {
  __$$PaginationDataDtoImplCopyWithImpl(_$PaginationDataDtoImpl _value,
      $Res Function(_$PaginationDataDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginationDataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? totalRecords = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_$PaginationDataDtoImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationDataDtoImpl implements _PaginationDataDto {
  const _$PaginationDataDtoImpl(
      {@JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'total_records') this.totalRecords,
      @JsonKey(name: 'page_size') this.pageSize});

  factory _$PaginationDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationDataDtoImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  @JsonKey(name: 'total_records')
  final int? totalRecords;
  @override
  @JsonKey(name: 'page_size')
  final int? pageSize;

  @override
  String toString() {
    return 'PaginationDataDto(currentPage: $currentPage, totalPages: $totalPages, totalRecords: $totalRecords, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationDataDtoImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalRecords, totalRecords) ||
                other.totalRecords == totalRecords) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPage, totalPages, totalRecords, pageSize);

  /// Create a copy of PaginationDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationDataDtoImplCopyWith<_$PaginationDataDtoImpl> get copyWith =>
      __$$PaginationDataDtoImplCopyWithImpl<_$PaginationDataDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationDataDtoImplToJson(
      this,
    );
  }
}

abstract class _PaginationDataDto implements PaginationDataDto {
  const factory _PaginationDataDto(
          {@JsonKey(name: 'current_page') final int? currentPage,
          @JsonKey(name: 'total_pages') final int? totalPages,
          @JsonKey(name: 'total_records') final int? totalRecords,
          @JsonKey(name: 'page_size') final int? pageSize}) =
      _$PaginationDataDtoImpl;

  factory _PaginationDataDto.fromJson(Map<String, dynamic> json) =
      _$PaginationDataDtoImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'total_records')
  int? get totalRecords;
  @override
  @JsonKey(name: 'page_size')
  int? get pageSize;

  /// Create a copy of PaginationDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationDataDtoImplCopyWith<_$PaginationDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
