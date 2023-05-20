import 'package:abroad/src/features/authentication/controllers/login_controller.dart';
import 'package:abroad/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/sizes.dart';
import '../verification_screen/verification_screen.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPasswordForm> {
  final controller = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              textAlign: TextAlign.center,
              controller: controller.email,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: tExampleEmail,
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: const BorderSide(color: Colors.white, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: const BorderSide(color: Colors.white, width: 2),
                ),
              ),
            ),
            const SizedBox(height: tFormHeight + 10),
            Center(
              child: SizedBox(
                width: 220,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const VerificationScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(320, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.white, width: 2),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  child: const Text(tRequestResetLink),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
