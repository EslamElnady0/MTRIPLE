import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mtriple/core/services/firebase_auth_service.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(SigninInitial());

  FirebaseAuthServices firebaseAuthServices = FirebaseAuthServices();

  signInUser({required String email, required String password}) async {
    emit(SigninLoading());
    try {
      await firebaseAuthServices.signInUser(
          emailAddress: email, password: password);
      emit(SigninSuccess());
    } catch (e) {
      emit(SigninFailure(errMessage: e.toString()));
    }
  }
}
