import 'package:flutter/material.dart';
import 'home_appbar_content.dart';

class HomeAppBarBuilder extends StatelessWidget {
  const HomeAppBarBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      titleSpacing: 0,
      title: CustomAppBar(),
      floating: true,
      snap: true,
      scrolledUnderElevation: 0.0,
      elevation: 0,
      toolbarHeight: 80,
    );
  }
}
