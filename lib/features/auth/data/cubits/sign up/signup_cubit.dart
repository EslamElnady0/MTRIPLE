import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mtriple/core/services/firebase_auth_service.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  FirebaseAuthServices firebaseAuthServices = FirebaseAuthServices();

  signUpUser({required String email, required String password}) async {
    emit(SignupLoading());
    try {
      await firebaseAuthServices.signUpUser(
          emailAddress: email, password: password);
      emit(SignupSuccess());
    } catch (e) {
      emit(SignupFailure(errMessage: e.toString()));
      log(e.toString());
    }
  }
}
