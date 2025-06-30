import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/search_cubit/search_cubit_cubit.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextField(
        onSubmitted: (value) {
          context.read<SearchCubitCubit>().searchBooks(value);
        },
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        decoration: const InputDecoration(
          hintText: 'Search',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search, size: 24),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}
