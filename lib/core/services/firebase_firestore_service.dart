import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mtriple/features/auth/data/models/user_model.dart';

class FirebaseFirestoreServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  addToFirestore({required UserModel user}) async {
    try {
      final docRef = firestore
          .collection("users")
          .withConverter(
            fromFirestore: UserModel.fromFirestore,
            toFirestore: (UserModel user, options) => user.toFirestore(user),
          )
          .doc(user.userId);

      await docRef.set(user);
    } on FirebaseException catch (e) {
      log(e.toString());
    }
  }

  updateNickname({required String nickName}) async {
    try {
      final docRef = firestore
          .collection("users")
          .withConverter(
            fromFirestore: UserModel.fromFirestore,
            toFirestore: (UserModel user, options) => user.toFirestore(user),
          )
          .doc(FirebaseAuth.instance.currentUser!.uid);

      await docRef.update({"nickName": nickName});
    } on FirebaseException catch (e) {
      log(e.toString());
    }
  }

  // getFromFirestore() {
  //   final docRef = firestore.collection("users").doc( )
  // }
}
