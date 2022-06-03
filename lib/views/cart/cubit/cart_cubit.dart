import 'package:e_med/views/cart/state/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  a(int currentIndex) {
    emit(CartComplete(currentIndex: currentIndex));
  }
}
