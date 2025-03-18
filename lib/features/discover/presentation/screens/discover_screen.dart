import 'package:case_study/core/injection/injection.dart';
import 'package:case_study/features/discover/domain/repository/discover_repository.dart';
import 'package:case_study/features/discover/presentation/cubits/discover_cubit.dart';
import 'package:case_study/features/discover/presentation/widgets/layouts/discover_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DiscoverCubit(
        discoverRepository: sl<DiscoverRepository>(),
      ),
      child: DiscoverLayout(),
    );
  }
}
