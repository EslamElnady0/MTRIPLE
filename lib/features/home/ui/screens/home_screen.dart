import 'package:flutter/material.dart';
import 'package:mtriple/core/services/firebase_firestore_service.dart';
import 'package:mtriple/features/auth/data/models/user_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseFirestoreServices firestoreServices = FirebaseFirestoreServices();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Home :D",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            FutureBuilder(
                future: firestoreServices.getCurrentUserData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator(); // Or a placeholder widget
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    final userModel = snapshot.data as UserModel;
                    final nickname = userModel.nickName == ""
                        ? "Unknown"
                        : userModel.nickName;
                    return Text(
                      nickname,
                      style: const TextStyle(fontSize: 30, color: Colors.white),
                    );
                  } else {
                    return const Text(
                      'No data',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
