import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String first;
  final String last;
  final String email;
  String password;
  String nickName;
  final String userId;
  UserModel(
      {required this.email,
      required this.userId,
      required this.first,
      required this.last,
      required this.nickName,
      required this.password});

  Map<String, dynamic> toFirestore(UserModel userModel) {
    return {
      "first": userModel.first,
      "last": userModel.last,
      "email": userModel.email,
      "password": userModel.password,
      "nickName": userModel.nickName,
      "userId": userModel.userId,
    };
  }

  factory UserModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return UserModel(
      first: data?['first'],
      last: data?['last'],
      email: data?['email'],
      password: data?['password'],
      nickName: data?['nickName'],
      userId: data?['userId'],
    );
  }
}
