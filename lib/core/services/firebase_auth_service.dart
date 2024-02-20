import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  signUpUser({required String emailAddress, required String password}) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  signInUser({required String emailAddress, required String password}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: emailAddress, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
      }
    }
  }

  // loadUser() {
  //   try {
  //     firebaseAuth.authStateChanges().listen((user) {
  //       if (user == null) {
  //         log("motashared ngs");
  //       } else {
  //         log("ebn nas we mo7trm");
  //       }
  //     });
  //   } catch (e) {
  //     log(e.toString());
  //   }
  // }
}
