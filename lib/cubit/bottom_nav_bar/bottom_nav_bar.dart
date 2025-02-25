import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarCubit extends Cubit<int> {
  BottomNavBarCubit() : super(1);

  void changeTab(int index) {
    emit(index);
  }
}
