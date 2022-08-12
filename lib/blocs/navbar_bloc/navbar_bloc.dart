import 'package:flutter_bloc/flutter_bloc.dart';

class NavbarInitial {
  int currentIndex;
  NavbarInitial({required this.currentIndex});
}

class NavbarCubit extends Cubit<NavbarInitial> {
  NavbarCubit() : super(NavbarInitial(currentIndex: 0));

  void setTab(value) => emit(NavbarInitial(currentIndex: value));
}
