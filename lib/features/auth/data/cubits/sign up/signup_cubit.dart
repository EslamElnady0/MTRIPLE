import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  signUpUser({required String email, required String password}) async {
    emit(SignupLoading());
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(SignupSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignupFailure(errMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignupFailure(
            errMessage: 'The account already exists for that email.'));
      } else {
        emit(SignupFailure(errMessage: "there was an error"));
      }
    } catch (e) {
      emit(SignupFailure(errMessage: "there was an error"));
    }
  }
}
