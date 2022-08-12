import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_wouter/blocs/navbar_bloc/navbar_bloc.dart';

class AppBarComponent extends StatelessWidget with PreferredSizeWidget {
  const AppBarComponent({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  getTitle(currentIndex) {
    if (currentIndex == 0) {
      return "Projects";
    } else if (currentIndex == 1) {
      return "Privacy";
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarCubit, NavbarInitial>(
        builder: (context, state) => AppBar(
              title: Text(getTitle(state.currentIndex)),
              centerTitle: true,
              backgroundColor: Colors.red,
            ));
  }
}
