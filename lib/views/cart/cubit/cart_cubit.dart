import 'package:e_med/views/cart/state/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  int currentIndexx = 0;
  a(int currentIndex) {
    currentIndexx = currentIndex;
    emit(CartComplete(currentIndex: currentIndexx));
  }
}
