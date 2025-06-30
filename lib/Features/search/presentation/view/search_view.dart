import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repo/search_repo.dart';
import '../cubit/search_cubit/search_cubit_cubit.dart';
import '../../../../Core/di/service_locator.dart';
import 'widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubitCubit(getIt<SearchRepo>()),
      child: const SearchViewBody(),
    );
  }
}
