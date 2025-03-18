import 'package:bloc/bloc.dart';
import 'package:case_study/features/discover/domain/entity/locations_response_entity.dart';
import 'package:case_study/features/discover/domain/repository/discover_repository.dart';

part 'discover_state.dart';

class DiscoverCubit extends Cubit<DiscoverState> {
  DiscoverCubit({required DiscoverRepository discoverRepository})
      : _discoverRepository = discoverRepository,
        super(DiscoverState.initial());

  final DiscoverRepository _discoverRepository;

  Future<void> getLocations() async {
    emit(
      state.copyWith(concreteState: DiscoverConcreteState.loading),
    );

    final result = await _discoverRepository.getLocations(
      page: 1,
    );

    result.when(
      success: (success) {
        emit(
          state.copyWith(
            locations: success,
            concreteState: DiscoverConcreteState.data,
          ),
        );
      },
      failure: (failure) {
        emit(
          state.copyWith(
            concreteState: DiscoverConcreteState.error,
          ),
        );
      },
    );
  }

  Future<void> getMoreLocations() async {
    if (!state.isFetchingMore &&
        state.locations.pagination.currentPage <
            state.locations.pagination.totalPages) {
      emit(state.copyWith(isFetchingMore: true));

      final result = await _discoverRepository.getLocations(
        page: state.locations.pagination.currentPage + 1,
      );

      result.when(
        success: (success) {
          final locations = state.locations.locations;

          locations.addAll(success.locations.toList());

          emit(
            state.copyWith(
              locations: state.locations.copyWith(
                locations: locations,
                pagination: success.pagination,
              ),
              concreteState: DiscoverConcreteState.data,
              isFetchingMore: false,
              fetchingMoreError: false,
            ),
          );
        },
        failure: (failure) {
          emit(
            state.copyWith(
              isFetchingMore: false,
              fetchingMoreError: true,
            ),
          );
        },
      );
    }
  }
}
