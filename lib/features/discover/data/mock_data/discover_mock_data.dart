import 'dart:convert';

import 'package:case_study/features/discover/data/dto/locations_response_dto.dart';
import 'package:flutter/services.dart';

class DiscoverMockData {
  Future<LocationsResponseDto> getLocations() async {
    final jsonString =
        await rootBundle.loadString('assets/data/locations_data.json');
    final dataList = json.decode(jsonString) as Map<String, dynamic>;

    final dto = LocationsResponseDto.fromJson(dataList);

    return dto;
  }
}
