abstract class CartState {}

class CartInitial extends CartState {}

class CartLoding extends CartState {}

class CartComplete extends CartState {
  int currentIndex = 0;
  CartComplete({required this.currentIndex});
}

class CartError extends CartState {}
