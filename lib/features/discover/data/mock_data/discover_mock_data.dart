import 'dart:convert';

import 'package:case_study/features/discover/data/dto/locations_response_dto.dart';
import 'package:flutter/services.dart';

class DiscoverMockData {
  Future<LocationsResponseDto> getLocations(int page) async {
    var path = 'assets/data/first_page.json';

    if (page == 2) {
      path = 'assets/data/second_page.json';
    } else if(page == 3){
      path = 'assets/data/third_page.json';
    }

    final jsonString = await rootBundle.loadString(path);
    final dataList = json.decode(jsonString) as Map<String, dynamic>;

    final dto = LocationsResponseDto.fromJson(dataList);

    return dto;
  }
}
