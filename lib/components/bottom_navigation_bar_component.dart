import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_wouter/blocs/navbar_bloc/navbar_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationBarComponent extends StatelessWidget {
  const BottomNavigationBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarCubit, NavbarInitial>(
        builder: (context, state) => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: state.currentIndex,
              backgroundColor: Colors.red,
              selectedItemColor: Colors.white,
              onTap: (value) {
                context.read<NavbarCubit>().setTab(value);
              },
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/tab-icon-projects.svg',
                      color: Colors.white, width: 40, height: 40),
                  label: 'Projects',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/tab-icon-privacy.svg',
                      width: 40, height: 40, color: Colors.white),
                  label: 'Privacy',
                )
              ],
            ));
  }
}
