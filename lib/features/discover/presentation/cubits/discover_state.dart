part of 'discover_cubit.dart';

enum DiscoverConcreteState {
  loading,
  error,
  data;
}

class DiscoverState {
  final LocationsResponseEntity locations;
  final DiscoverConcreteState concreteState;
  final bool isFetchingMore;
  final bool fetchingMoreError;

  const DiscoverState({
    required this.locations,
    required this.concreteState,
    required this.isFetchingMore,
    required this.fetchingMoreError,
  });

  DiscoverState.initial()
      : locations = LocationsResponseEntity.initial(),
        concreteState = DiscoverConcreteState.loading,
        isFetchingMore = false,
        fetchingMoreError = false;

  DiscoverState copyWith({
    LocationsResponseEntity? locations,
    DiscoverConcreteState? concreteState,
    bool? isFetchingMore,
    bool? fetchingMoreError,
  }) {
    return DiscoverState(
      locations: locations ?? this.locations,
      concreteState: concreteState ?? this.concreteState,
      isFetchingMore: isFetchingMore ?? this.isFetchingMore,
      fetchingMoreError: fetchingMoreError ?? this.fetchingMoreError,
    );
  }
}
