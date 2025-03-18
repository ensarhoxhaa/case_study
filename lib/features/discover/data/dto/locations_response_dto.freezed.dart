// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locations_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationsResponseDto _$LocationsResponseDtoFromJson(Map<String, dynamic> json) {
  return _CallSummaryResponseDto.fromJson(json);
}

/// @nodoc
mixin _$LocationsResponseDto {
  @JsonKey(name: 'locations')
  List<LocationDto>? get locations => throw _privateConstructorUsedError;
  @JsonKey(name: 'pagination')
  PaginationDataDto? get pagination => throw _privateConstructorUsedError;

  /// Serializes this LocationsResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationsResponseDtoCopyWith<LocationsResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsResponseDtoCopyWith<$Res> {
  factory $LocationsResponseDtoCopyWith(LocationsResponseDto value,
          $Res Function(LocationsResponseDto) then) =
      _$LocationsResponseDtoCopyWithImpl<$Res, LocationsResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'locations') List<LocationDto>? locations,
      @JsonKey(name: 'pagination') PaginationDataDto? pagination});

  $PaginationDataDtoCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$LocationsResponseDtoCopyWithImpl<$Res,
        $Val extends LocationsResponseDto>
    implements $LocationsResponseDtoCopyWith<$Res> {
  _$LocationsResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationDto>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationDataDto?,
    ) as $Val);
  }

  /// Create a copy of LocationsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationDataDtoCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationDataDtoCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CallSummaryResponseDtoImplCopyWith<$Res>
    implements $LocationsResponseDtoCopyWith<$Res> {
  factory _$$CallSummaryResponseDtoImplCopyWith(
          _$CallSummaryResponseDtoImpl value,
          $Res Function(_$CallSummaryResponseDtoImpl) then) =
      __$$CallSummaryResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'locations') List<LocationDto>? locations,
      @JsonKey(name: 'pagination') PaginationDataDto? pagination});

  @override
  $PaginationDataDtoCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$CallSummaryResponseDtoImplCopyWithImpl<$Res>
    extends _$LocationsResponseDtoCopyWithImpl<$Res,
        _$CallSummaryResponseDtoImpl>
    implements _$$CallSummaryResponseDtoImplCopyWith<$Res> {
  __$$CallSummaryResponseDtoImplCopyWithImpl(
      _$CallSummaryResponseDtoImpl _value,
      $Res Function(_$CallSummaryResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$CallSummaryResponseDtoImpl(
      locations: freezed == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationDto>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationDataDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CallSummaryResponseDtoImpl implements _CallSummaryResponseDto {
  const _$CallSummaryResponseDtoImpl(
      {@JsonKey(name: 'locations') final List<LocationDto>? locations,
      @JsonKey(name: 'pagination') this.pagination})
      : _locations = locations;

  factory _$CallSummaryResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CallSummaryResponseDtoImplFromJson(json);

  final List<LocationDto>? _locations;
  @override
  @JsonKey(name: 'locations')
  List<LocationDto>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'pagination')
  final PaginationDataDto? pagination;

  @override
  String toString() {
    return 'LocationsResponseDto(locations: $locations, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallSummaryResponseDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_locations), pagination);

  /// Create a copy of LocationsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallSummaryResponseDtoImplCopyWith<_$CallSummaryResponseDtoImpl>
      get copyWith => __$$CallSummaryResponseDtoImplCopyWithImpl<
          _$CallSummaryResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CallSummaryResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _CallSummaryResponseDto implements LocationsResponseDto {
  const factory _CallSummaryResponseDto(
          {@JsonKey(name: 'locations') final List<LocationDto>? locations,
          @JsonKey(name: 'pagination') final PaginationDataDto? pagination}) =
      _$CallSummaryResponseDtoImpl;

  factory _CallSummaryResponseDto.fromJson(Map<String, dynamic> json) =
      _$CallSummaryResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'locations')
  List<LocationDto>? get locations;
  @override
  @JsonKey(name: 'pagination')
  PaginationDataDto? get pagination;

  /// Create a copy of LocationsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallSummaryResponseDtoImplCopyWith<_$CallSummaryResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
