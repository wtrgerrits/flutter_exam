import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_wouter/blocs/navbar_bloc/navbar_bloc.dart';

class NavigationViewComponent extends StatelessWidget {
  const NavigationViewComponent({Key? key}) : super(key: key);

  getView(currentIndex) {
    if (currentIndex == 0) {
      return const Text('Project');
    } else if (currentIndex == 1) {
      return const Text('Privacy');
    }

    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarCubit, NavbarInitial>(
        builder: (context, state) =>
            Container(child: getView(state.currentIndex)));
  }
}
