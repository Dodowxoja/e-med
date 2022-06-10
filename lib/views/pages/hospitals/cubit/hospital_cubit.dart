import 'package:e_med/views/pages/hospitals/state/hospital_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HospitalCubit extends Cubit<HospitalState> {
  HospitalCubit() : super(HospitalInitial());

  bool isTrue = true;
  visible() {
    emit(HospitalComplete(visible: isTrue = !isTrue));
  }
}
