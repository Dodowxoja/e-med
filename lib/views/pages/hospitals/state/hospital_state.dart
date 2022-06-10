abstract class HospitalState {
  HospitalState();
}

class HospitalInitial extends HospitalState {
  HospitalInitial();
}

class HospitalLoading extends HospitalState {
  HospitalLoading();
}

class HospitalComplete extends HospitalState {
  bool visible;
  HospitalComplete({required this.visible});
}

class HospitalError extends HospitalState {
  HospitalError();
}
