import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/widgets/custom_sliver_book_tile.dart';
import '../../cubit/search_cubit/search_cubit_cubit.dart';
import 'search_view_appbar.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchAppBar(),
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
              child: Column(
                children: [
                  Text(state.exception.toString()),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      context.read<SearchCubitCubit>().searchBooks('all');
                    },
                    child: const Text('Get all books'),
                  ),
                ],
              ),
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
