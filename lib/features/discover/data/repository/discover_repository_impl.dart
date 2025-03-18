import 'package:case_study/core/exceptions/app_exceptions.dart';
import 'package:case_study/core/helpers/result.dart';
import 'package:case_study/features/discover/data/dto/locations_response_dto.dart';
import 'package:case_study/features/discover/data/mock_data/discover_mock_data.dart';
import 'package:case_study/features/discover/domain/entity/locations_response_entity.dart';
import 'package:case_study/features/discover/domain/repository/discover_repository.dart';

class DiscoverRepositoryImpl implements DiscoverRepository{

  final DiscoverMockData _mockData;

  DiscoverRepositoryImpl({required DiscoverMockData mockData}) : _mockData = mockData;

  @override
  Future<Result<LocationsResponseEntity>> getLocations({
    int? page,
  }) async {
    try {
      final result = await _mockData.getLocations();

      final entity = LocationsResponseEntity.fromDto(result);

      return Success(entity);
    } catch (e) {
      return Failure(UnknownException(e.toString()));
    }
  }
}
