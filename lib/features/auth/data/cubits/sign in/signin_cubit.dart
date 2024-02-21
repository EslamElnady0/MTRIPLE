import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(SigninInitial());

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  signInUser({required String email, required String password}) async {
    emit(SigninLoading());
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(SigninSuccess());
    } on FirebaseAuthException catch (err) {
      if (err.code == 'user-not-found') {
        emit(SigninFailure(errMessage: 'No user found for that email.'));
      } else if (err.code == 'wrong-password') {
        emit(SigninFailure(
            errMessage: 'Wrong password provided for that user.'));
      } else {
        emit(SigninFailure(errMessage: 'There was an error'));
      }
    } catch (e) {
      emit(SigninFailure(errMessage: 'There was an error'));
    }
  }

  @override
  void onChange(Change<SigninState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
