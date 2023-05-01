import 'package:abroad/src/features/authentication/screens/profile/profile_screen.dart';
import 'package:abroad/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../constants/text_strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                child: const Text("Logout"),
                onPressed: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    print("Signed Out");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomeScreen()));
                  });
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: const BorderSide(color: Colors.white, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(tProfile,
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
