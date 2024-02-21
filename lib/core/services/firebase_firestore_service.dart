import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mtriple/features/auth/data/models/user_model.dart';

class FirebaseFirestoreServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  addToFirestore({required UserModel user}) async {
    try {
      final docRef = firestore.collection("users").doc(user.userId);

      await docRef.set(user.toFirestore(user));
    } on FirebaseException catch (e) {
      log(e.toString());
    }
  }

  updateNickname({required String nickName}) async {
    try {
      String userId = FirebaseAuth.instance.currentUser!.uid;

      final docRef = firestore.collection("users").doc(userId);

      await docRef.update({"nickName": nickName});
    } on FirebaseException catch (e) {
      log(e.toString());
    }
  }

  Future<UserModel?>? getCurrentUserData() async {
    UserModel? user;
    final userInfo = await firestore
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .get();

    if (userInfo.data() == null) {
      return user;
    }
    user = UserModel.fromFirestore(userInfo.data()!);
    return user;
  }
}
