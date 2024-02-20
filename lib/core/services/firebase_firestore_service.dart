import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mtriple/features/auth/data/models/user_model.dart';

class FirebaseFirestoreServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  addToFirestore({required UserModel user}) async {
    try {
      final collectionRef = firestore.collection("users").withConverter(
            fromFirestore: UserModel.fromFirestore,
            toFirestore: (UserModel user, options) => user.ToFirestore(user),
          );

      await collectionRef.add(user);
    } on FirebaseException catch (e) {
      log(e.toString());
    }
  }

  // getFromFirestore() {
  //   final docRef = firestore.collection("users").doc( )
  // }
}
