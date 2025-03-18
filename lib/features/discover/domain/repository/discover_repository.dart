import 'package:case_study/core/helpers/result.dart';
import 'package:case_study/features/discover/domain/entity/locations_response_entity.dart';

abstract class DiscoverRepository {
  Future<Result<LocationsResponseEntity>> getLocations({
    int? page,
  });
}
