import 'package:case_study/features/discover/data/mock_data/discover_mock_data.dart';
import 'package:case_study/features/discover/data/repository/discover_repository_impl.dart';
import 'package:case_study/features/discover/domain/repository/discover_repository.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initSingletons() async {
  _registerRepositories();
}

void _registerRepositories() {
  sl.registerLazySingleton<DiscoverRepository>(
    () => DiscoverRepositoryImpl(
      mockData: sl<DiscoverMockData>(),
    ),
  );

  sl.registerLazySingleton<DiscoverMockData>(
    () => DiscoverMockData(),
  );
}
