import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/widgets/custom_sliver_book_tile.dart';
import '../../data/repo/search_repo_impl.dart';
import '../cubit/search_cubit/search_cubit_cubit.dart';
import '../../../../Core/apis/api_service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubitCubit(SearchRepoImpl(ApiService(Dio()))),
      child: const SearchViewBody(),
    );
  }
}

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onSubmitted: (value) {
            context.read<SearchCubitCubit>().searchBooks(value);
          },
          onTapUpOutside: (event) => FocusScope.of(context).unfocus(),
          decoration: const InputDecoration(
            hintText: 'Search',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.search, size: 24),
          ),
        ),
      ),
      body: BlocBuilder<SearchCubitCubit, SearchCubitState>(
        builder: (context, state) {
          if (state is SearchCubitLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SearchCubitSuccess) {
            return CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 47)),
                CustomSliverBookTile(listOfBooks: state.books),
              ],
            );
          } else if (state is SearchCubitFailure) {
            return Center(
              child: Text(state.exception.message),
            );
          }
          return const Center(
            child: Text('Search'),
          );
        },
      ),
    );
  }
}
