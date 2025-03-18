import 'package:case_study/core/constants/assets_paths.dart';
import 'package:case_study/features/discover/presentation/cubits/discover_cubit.dart';
import 'package:case_study/features/discover/presentation/widgets/location_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiscoverLayout extends StatefulWidget {
  const DiscoverLayout({super.key});

  @override
  State<DiscoverLayout> createState() => _DiscoverLayoutState();
}

class _DiscoverLayoutState extends State<DiscoverLayout> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    context.read<DiscoverCubit>().getLocations();
    _scrollController.addListener(_onNutritionScroll);
    super.initState();
  }

  void _onNutritionScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      context.read<DiscoverCubit>().getMoreLocations();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(AssetsPaths.appLogo),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 8,
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: SvgPicture.asset(
                  AssetsPaths.search,
                  fit: BoxFit.scaleDown,
                ),
                hintText: 'Search',
                suffixIcon: SvgPicture.asset(
                  AssetsPaths.filter,
                  fit: BoxFit.scaleDown,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          BlocBuilder<DiscoverCubit, DiscoverState>(
            builder: (context, state) {
              if (state.concreteState == DiscoverConcreteState.loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.concreteState == DiscoverConcreteState.data) {
                return Expanded(
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: state.locations.locations.length,
                    itemBuilder: (context, index) {
                      return LocationCard(
                        location: state.locations.locations[index],
                      );
                    },
                  ),
                );
              } else if (state.concreteState == DiscoverConcreteState.error) {
                return Center(
                  child: Text(
                    'An error has occurred',
                  ),
                );
              }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
