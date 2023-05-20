import 'package:abroad/src/features/authentication/controllers/login_controller.dart';
import 'package:abroad/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/sizes.dart';
import '../forgot_password_screen/forgot_password_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
              controller: controller.email,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person_outline_outlined),
                prefixIconColor: Colors.white,
                labelText: tEmail,
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
            const SizedBox(height: tFormHeight),
            TextFormField(
              controller: controller.password,
              obscureText: _obscurePassword,
              enableSuggestions: false,
              autocorrect: false,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint),
                prefixIconColor: Colors.white,
                labelText: tPassword,
                labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                  icon: Icon(
                    color: Colors.white54,
                    _obscurePassword
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                ),
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
            const SizedBox(height: tFormHeight - 30),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPasswordScreen()));
                },
                child: const Text(
                  tForgetPassword,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(height: tDefaultSize),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    LoginController.instance.loginUser(
                      controller.email.text.trim(),
                      controller.password.text.trim(),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(320, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: const BorderSide(color: Colors.white, width: 2),
                  ),
                  backgroundColor: Colors.transparent,
                ),
                child: const Text(tLogin),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
