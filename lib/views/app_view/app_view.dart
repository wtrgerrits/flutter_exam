import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_wouter/blocs/navbar_bloc/navbar_bloc.dart';
import 'package:flutter_exam_wouter/blocs/theme_bloc/theme_bloc.dart';
import 'package:flutter_exam_wouter/components/app_bar_component.dart';
import 'package:flutter_exam_wouter/components/bottom_navigation_bar_component.dart';
import 'package:flutter_exam_wouter/components/navigation_view_component.dart';

class AppView extends StatelessWidget {
  /// {@macro app_view}
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(builder: (_, theme) {
      return MaterialApp(
          theme: theme,
          home: BlocProvider(
            create: (_) => NavbarCubit(),
            child: const Scaffold(
                appBar: AppBarComponent(),
                body: NavigationViewComponent(),
                bottomNavigationBar: BottomNavigationBarComponent()),
          ));
    });
  }
}
